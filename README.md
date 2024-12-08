## Firefox
Heavily modified version of [EdgyArc-Fr](https://github.com/artsyfriedchicken/EdgyArc-fr) tailored specifically for Arch Linux / hyprland. Just drag the chrome folder in and install as you would.
Requires the following extensions:
- [Sidebery](https://addons.mozilla.org/en-US/firefox/addon/sidebery/) (for side tabs)
- [UserChrome Toggle](https://addons.mozilla.org/en-US/firefox/addon/userchrome-toggle/) (for autocollapsing sidebar)
- [Firefox Color](https://addons.mozilla.org/en-US/firefox/addon/firefox-color/) (for pretty colors)

Also makes any extension with an SVG icon pink when placed in the sidebar. For png icons (yuck), Dark Reader and CPH submit have colored icons just because I use those.


## Terminal Emulator
It's just alacritty with oh-my-posh running zsh.

## Kanshi
On Hi-DPI screens, Electron and Chromium apps (Discord/Vesktop, Spotify, VSC, etc.) get really sharp because of the scaling.
To fix this, in each app's `.desktop` file (in `/usr/share/applications`, or, more permanently, in `~/.local/share/applications`), append the "Exec" line with
`--enable-features=UseOzonePlatform --ozone-platform=wayland`. **Make sure you are using the AUR version of Spotify, and not the spotify-launcher package.**

## LaTeX
Put the `matti.sty` file in `~/texmf/tex/latex/`
