#!/usr/bin/env python3
"""Post-process The Library EPUB to fix issues pandoc's Lua filter can't reach.

- Remove the duplicate title H1 from the dedication/epigraph page
- Clean up the TOC: rename it "Contents", drop a redundant top-level wrapper,
  and lift the back-matter entries out of Part II's nested list
- Prefix the Part heading pages with "Part I" / "Part II" / "Part III"

Adapted from the Worldlines post-processor. Some patterns depend on pandoc's
exact output; every substitution no-ops cleanly if it does not match, so a
pandoc version change degrades gracefully rather than breaking the build.
"""

import re
import sys
import zipfile
from io import BytesIO
from pathlib import Path


def patch_dedication(text: str) -> str:
    """Remove the duplicate H1 title heading from the dedication page."""
    return re.sub(r'<h1 class="unnumbered">.*?</h1>\s*', "", text, count=1)


def patch_nav(text: str) -> str:
    """Clean up TOC: rename heading, fix nesting, remove redundant entries."""
    # Change TOC heading from book title to "Contents"
    text = re.sub(
        r'<h1 id="toc-title">.*?</h1>',
        '<h1 id="toc-title">Contents</h1>',
        text,
    )
    # Remove a redundant first top-level TOC entry that wraps children,
    # promoting its children to the top level.
    text = re.sub(
        r'<li id="toc-li-1"><a href="text/ch001\.xhtml">[^<]*</a>'
        r'<ol class="toc">(.*?)</ol></li>',
        r"\1",
        text,
    )
    # Move back-matter entries out of Part II's nested <ol>.
    backmatter_titles = [
        "Resources",
        "Further Reading",
        "About the Author",
        "Also by Alex Towell",
    ]
    for title in backmatter_titles:
        match = re.search(
            rf'(<li id="toc-li-\d+"><a href="[^"]+?">{re.escape(title)}</a></li>)',
            text,
        )
        if match:
            entry = match.group(1)
            text = text.replace(entry, "")
            text = text.replace("</ol></nav>", f"{entry}</ol></nav>", 1)
    return text


PART_LABELS = {
    "The Index": "Part I",
    "The System": "Part II",
    "The Self": "Part III",
}


def patch_parts(text: str) -> str:
    """Add 'Part I' / 'Part II' / 'Part III' prefix to part heading pages."""
    for title, label in PART_LABELS.items():
        text = text.replace(
            f"<h1>{title}</h1>",
            f'<h1><span class="part-label">{label}</span><br />{title}</h1>',
        )
    return text


def patch_epub(epub_path: str) -> None:
    path = Path(epub_path)
    buf = BytesIO(path.read_bytes())

    with zipfile.ZipFile(buf, "r") as zin:
        names = zin.namelist()
        entries = {}
        for name in names:
            data = zin.read(name)

            if name.endswith(".xhtml") and b'class="level1 unnumbered"' in data:
                entries[name] = patch_dedication(data.decode()).encode()
            elif name.endswith(".xhtml") and b'epub:type="toc"' in data:
                entries[name] = patch_nav(data.decode()).encode()
            elif name.endswith(".xhtml") and b'class="level1"' in data:
                entries[name] = patch_parts(data.decode()).encode()
            else:
                entries[name] = data

    out = BytesIO()
    with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as zout:
        # The OCF spec requires the "mimetype" entry to be first and stored
        # uncompressed. Write it that way before the (compressed) remainder.
        if "mimetype" in entries:
            mi = zipfile.ZipInfo("mimetype")
            mi.compress_type = zipfile.ZIP_STORED
            zout.writestr(mi, entries["mimetype"])
        for name in names:
            if name == "mimetype":
                continue
            zout.writestr(name, entries[name])

    path.write_bytes(out.getvalue())


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} <epub_file>", file=sys.stderr)
        sys.exit(1)
    patch_epub(sys.argv[1])
