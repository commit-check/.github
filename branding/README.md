# Branding v4 — Signal

The mark is a commit on a history line, ticked: the thing Commit Check looks
at, and the verdict. It replaces the swoosh check of v1–v3. The same set is
used on [commit-check.com](https://commit-check.com), in the org avatar, the
README badge and the social previews, so they read as one project.

| Token | Value | Use |
| --- | --- | --- |
| Ink | `#0b1620` | Dark grounds, the mark's tile, text on light |
| Signal Blue | `#2c9ccd` | The mark, accents, buttons (with Ink text). The same blue the badge has always used |
| Paper | `#f4f6f7` | Light grounds |
| Display face | Bricolage Grotesque 700–800 | The wordmark and headings |
| Text face | Instrument Sans | Everything else |
| Code face | JetBrains Mono, ligatures off | Commands, rule IDs, output |

| File | Use it for |
| --- | --- |
| `avatar.png` | The org avatar, 1024×1024. Full-bleed Ink, because GitHub crops avatars itself. |
| `logo-mark.png` / `.svg` | The mark on its tile. |
| `logo.png` / `logo-dark.png` | The lockup for light / dark backgrounds, trimmed. |
| `banner-light.png` / `banner-dark.png` | READMEs. Pair them in a `<picture>`. Lockup on the left, a passing check run on the right, rendered at 2× (2000×640). |
| `social-preview.png` | The org-wide GitHub social preview (1280×640). |
| `social-preview-<repo>.png` | One per repository, with that repository's address and a panel showing what it does. |
| `favicon.svg` / `.png` | The small-size cut: at 16–32 px only the thickened tick remains. |
| `badge-logo.svg` | The logo inside the README badge (below). |

Upload a social preview per repository under **Settings → Social preview**;
GitHub has no API for it, so nothing does that for you.

## The README badge

[![commit-check](https://img.shields.io/badge/commit--check-enabled-2c9ccd?labelColor=0b1620&logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA2NCA2NCI%2bPHBhdGggZD0iTTIxIDM0TDMwIDQzTDQ3IDIyIiBmaWxsPSJub25lIiBzdHJva2U9IiMyQzlDQ0QiIHN0cm9rZS13aWR0aD0iOCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8%2bPGNpcmNsZSBjeD0iMjEiIGN5PSIzNCIgcj0iNyIgZmlsbD0iIzBCMTYyMCIgc3Ryb2tlPSIjMkM5Q0NEIiBzdHJva2Utd2lkdGg9IjUiLz48L3N2Zz4K)](https://commit-check.com)

The `logo=` parameter is `badge-logo.svg`, base64-encoded, with `+` written as
`%2b` (a bare `+` in a query string is a space). Shields.io only takes a
Simple Icons slug or a data URI there, which is why the URL is long.

## Re-rendering

The images with text are HTML pages in `src/`, rendered with headless Chrome;
their fonts come from Google Fonts, so nothing has to be installed. The
shape-only SVGs are rendered with `rsvg-convert`.

```bash
branding/src/render.sh
```

None of the images carry a tagline, and new ones should not either. A slogan
baked into a PNG cannot be reviewed in a diff and goes stale silently — v3's
read "Clean commits. Clear standards." for a while after the rest of the org
had stopped saying it. The wordmark, the domain and a repository's address do
not expire; the sentence belongs in the prose next to the image.

Reference the **PNGs** in READMEs, not the SVGs: GitHub proxies README images
through camo, which handles SVG unreliably, and `logo.svg` keeps its wordmark
as live text that needs the display face to render as designed.

## Legacy files

`logo.jpg` and `logo-small.jpg` predate this set and are kept only because
something outside this repository may still link to them; they now carry the
v4 lockup. `logo.jpg` is a PNG wearing a `.jpg` extension, and
`logo-small.jpg` is a real JPEG on white. Remove them once you have confirmed
nothing points at them.
