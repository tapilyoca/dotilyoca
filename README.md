will format everything better later but:

## Kanshi
On Hi-DPI screens, Electron and Chromium apps (Discord/Vesktop, Spotify, VSC, etc.) get really sharp because of the scaling.
To fix this, in each app's `.desktop` file (in `/usr/share/applications`), append the "Exec" line with
`--enable-features=UseOzonePlatform --ozone-platform=wayland`. **Make sure you are using the AUR version of Spotify, and not the spotify-launcher package.**

## LaTeX
Put the `matti.sty` file in `~/texmf/tex/latex/`
