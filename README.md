will format everything better later but:

## Kanshi
On Hi-DPI screens, Electron and Chromium apps (Discord, Spotify, VSC, etc.) get really sharp because of the scaling.
To fix this, in each app's `.desktop` file (in `/usr/share/applications`), append the "Exec" line with
`--enable-features=UseOzonePlatform --ozone-platform=wayland`.

## LaTeX
Put the `matti.sty` file in `~/texmf/tex/latex/`
