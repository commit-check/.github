# Branding v3a

Vector remaster of the original swoosh-check logo. Same composition, same
brand blue **#2c9ccd** — but clean curves that stay sharp at any resolution.
The COMMIT wordmark carries a background-coloured keyline so the letters stay
legible where they cross the check.

| File | Use it for |
| --- | --- |
| `avatar.png` | The org avatar. White swoosh on brand blue, 1024x1024, wordless. |
| `logo.png` / `logo-dark.png` | The full lockup for light / dark backgrounds (keyline colour differs). |
| `logo-mark.png` | The swoosh alone, transparent, brand blue. |
| `banner-light.png` / `banner-dark.png` | READMEs and docs. Pair them in a `<picture>`. Lockup on the left, a sample check run on the right, no tagline. Rasterized at 2× (2560×640) so they stay sharp on retina displays. |
| `favicon.svg` | Favicon / small tile. |
| `social-preview.png` | GitHub social preview (1280x640). Centred lockup over the domain, no tagline. Upload it per repository under Settings → Social preview; nothing does that for you. |
| `*.svg` | Source of truth. The wordmark uses Montserrat SemiBold; PNGs here are the reference renders. |

None of these carry a tagline, and new ones should not either. A slogan baked
into a PNG cannot be reviewed in a diff, cannot be corrected without a machine
that has Montserrat installed, and goes stale silently — these read
"Clean commits. Clear standards." for a while after the rest of the org had
stopped saying it. The wordmark and the domain do not expire; the sentence belongs in the
prose next to the image, where changing it is a one-line diff.

Reference the **PNGs** in READMEs, not the SVGs: GitHub proxies README images
through camo, which handles SVG unreliably — and the SVG text needs Montserrat
installed to render correctly.

To re-render the banners (needs Montserrat SemiBold installed):

```bash
rsvg-convert -w 2560 -h 640 -o banner-light.png banner-light.svg
rsvg-convert -w 2560 -h 640 -o banner-dark.png banner-dark.svg
rsvg-convert -w 1280 -h 640 -o social-preview.png social-preview.svg
```

Different librsvg versions antialias glyph edges slightly differently, so a
re-render is a whole-image change even when you edited one line. To see what
you actually changed, render the file before and after with the *same* binary
and diff those two.

## Legacy files

`logo.jpg` and `logo-small.jpg` predate this set and are kept only because
something outside this repository may still link to them. Neither is fit for
new use: `logo.jpg` is a PNG wearing a `.jpg` extension, and `logo-small.jpg`
is a real JPEG, so it has no transparency and renders as a white box on any
dark background. Remove them once you have confirmed nothing points at them.
