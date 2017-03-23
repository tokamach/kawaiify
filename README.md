# Kawaiify

This is a simple script to automatically switch themes on OSX.
A theme in this case is a wallpaper, terminal theme, dark or
light menu bar, etc. It is currently a heavy WIP.

![demo](script-demo.gif)

## Current Options
* Wallpaper
* iTerm2 Profile
* Hide Menu bar
* Dark or light mode
* Neofetch image

## Issues
### new iTerm2 windows won't use new profile until restarted
This is due to the way iTerm2 loads config on startup. Currently not a high
priority as I think it would require patching iTerm2, and quite likely not a
simple patch either.

### Bar toggling occasionally won't work
The bar hiding works with GUI scripting. The old way was to do a 
quick `defaults write` but this required each window to be restarted for the
changes to take effect. The current GUI scripting solution does toggle the bar
for all windows, with an animation, but occasionally doesn't like to work. It
also has an artificial delay incurred so the window in the background clicks
properly, as such delaying theme changes with bar modifications by about 1-2
seconds.

The current possible options are:
* Figure out how the Preferences app does it, and attempt to mimick. My dtrace isn't quite
up to this one yet.
* Iterate through all windows and apply the window flag. I think `dark-mode`
does a similar thing for switching dark-mode on.

### Adding themes involves altering the script directly, by modifying a case statement
IKR. This isn't urgent for me but would make the script much cleaner and
easier to configure. It shouldn't be too difficult easier so this is probably
what I'll add next.

## Potential Options
* better theme storage (perhaps dedicated file?)
* KWM/KHD border colours and window settings
* ~~better iterm2 profile switching and~~ support for other terminals
* better argument parsing / more arguments
* better bar hiding (currently janky)
* software checks and auto setup

## FAQ
### How do I use it
Right now this github is mostly just here to keep track of the scripts progress.
However if you really want to use the script you'll have to:
1. Replace the themes in the start of the script with paths and iTerm2 profiles 
that'll work for you
2. Tell iTerm2 to use settings from another folder, `~/.kawaiify/` and then export
your current settings to there.
3. Run the script

### why doesn't it do X
Either I'm bad or OSX isn't customizable enough

### the name is dumb
no u
