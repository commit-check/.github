# Branding

Brand colour: **`#2c9ccd`**. The mark is a single check, stroked with round
caps and optically centred — a check is bottom-heavy, so it sits slightly high
in its box.

| File | Use it for |
| --- | --- |
| `avatar.png` | The org avatar. White check on brand blue, 1024×1024. |
| `banner-light.png` / `banner-dark.png` | READMEs and docs. Pair them in a `<picture>` so the banner follows the reader's theme. |
| `logo-mark.png` | The mark alone, transparent, where a background already exists. |
| `*.svg` | Source of truth. Edit these, then re-render the PNGs. |

Reference the **PNGs**, not the SVGs: GitHub proxies README images through
camo, which handles SVG unreliably.

The avatar is deliberately wordless. GitHub shows org avatars at around 40px
in most places, and at that size a wordmark is an unreadable smudge.

## Legacy files

`logo.jpg` and `logo-small.jpg` predate these and are kept only because
something outside this repository may still link to them. Neither is fit for
new use: `logo.jpg` is a PNG wearing a `.jpg` extension, and `logo-small.jpg`
is a real JPEG, so it has no transparency and renders as a white box on any
dark background. Remove them once you have confirmed nothing points at them.
