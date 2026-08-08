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
| `banner-light.png` / `banner-dark.png` | READMEs and docs. Pair them in a `<picture>`. Rasterized at 2× (2560×640) so they stay sharp on retina displays. |
| `favicon.svg` | Favicon / small tile. |
| `social-preview.png` | GitHub social preview (1280x640). |
| `*.svg` | Source of truth. The wordmark uses Montserrat SemiBold; PNGs here are the reference renders. |

Reference the **PNGs** in READMEs, not the SVGs: GitHub proxies README images
through camo, which handles SVG unreliably — and the SVG text needs Montserrat
installed to render correctly.

To re-render the banners (needs Montserrat SemiBold installed):

```bash
rsvg-convert -w 2560 -h 640 -o banner-light.png banner-light.svg
rsvg-convert -w 2560 -h 640 -o banner-dark.png banner-dark.svg
```

## Legacy files

`logo.jpg` and `logo-small.jpg` predate this set and are kept only because
something outside this repository may still link to them. Neither is fit for
new use: `logo.jpg` is a PNG wearing a `.jpg` extension, and `logo-small.jpg`
is a real JPEG, so it has no transparency and renders as a white box on any
dark background. Remove them once you have confirmed nothing points at them.
