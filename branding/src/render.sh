#!/usr/bin/env bash
# Re-renders every PNG in branding/ from the sources in this folder.
#
# Needs Google Chrome (the HTML sources pull their fonts from Google Fonts, so
# nothing has to be installed), rsvg-convert for the shape-only SVGs, and
# ImageMagick to trim the lockups. Run from anywhere:
#
#   branding/src/render.sh
set -euo pipefail

src="$(cd "$(dirname "$0")" && pwd)"
out="$(dirname "$src")"
chrome="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"

shot() { # url width height scale output
  "$chrome" --headless=new --disable-gpu --hide-scrollbars \
    --default-background-color=00000000 --virtual-time-budget=10000 \
    --window-size="$2,$3" --force-device-scale-factor="$4" \
    --screenshot="$5" "file://$src/$1" >/dev/null 2>&1
}

# Shapes only: no fonts involved.
rsvg-convert -w 1024 -h 1024 "$out/avatar.svg" -o "$out/avatar.png"
rsvg-convert -w 512 -h 512 "$out/logo-mark.svg" -o "$out/logo-mark.png"
rsvg-convert -w 256 -h 256 "$out/favicon.svg" -o "$out/favicon.png"

# The lockup, trimmed to its ink with an even margin.
for theme in light dark; do
  name=logo; [ "$theme" = dark ] && name=logo-dark
  shot "logo.html?theme=$theme" 1200 300 1 "$out/$name.png"
  magick "$out/$name.png" -trim +repage -bordercolor none -border 24 "$out/$name.png"
done

# Banners at 2x.
shot "banner.html?theme=light" 1000 320 2 "$out/banner-light.png"
shot "banner.html?theme=dark" 1000 320 2 "$out/banner-dark.png"

# Social previews: the org-wide card, then one per repository.
shot "social.html" 1280 640 1 "$out/social-preview.png"
for repo in commit-check commit-check-action commit-check-app commit-check-mcp; do
  shot "social.html?repo=$repo" 1280 640 1 "$out/social-preview-$repo.png"
done
