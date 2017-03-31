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

## how 2 do
Right now this github is mostly just here to keep track of the scripts progress.
However if you really want to use the script you'll have to:
1. Replace the themes in the start of the script with image paths and iTerm2 profiles 
that'll work for you
2. Tell iTerm2 to use settings from another folder, like `~/.kawaiify/` and then export
your current settings to there.
3. Run the script with `kawaiify themename`
4. Symlink it to somewhere on your path I guess

## Issues
### new iTerm2 windows won't use new profile until restarted
This is due to the way iTerm2 loads config on startup. Currently not a high
priority as I think it would require patching iTerm2, and quite likely not a
simple patch either.

### Adding themes involves altering the script directly, by modifying a case statement
update: its fine as it is  
IKR. This isn't urgent for me but would make the script much cleaner and
easier to configure. It shouldn't be too difficult either so this is probably
what I'll add next.

## other questions
### Can I change other things, prompt etc...
Right now I haven't implemented directly changing shell configs. **However** there is an alternate system usable right now. The file `~/.kawaiify/theme.lock` contains the current theme name. Use this to your advantage, for example you could set your bash/zsh/fish prompt to change based on this file. It's what I do.

[See here for more.](theme-lock.md)

### I don't like terminals, is this possible from a GUI
why are you here

But ok I might make a menu bar widget later

### why doesn't it do X
Either I'm bad or OSX isn't customizable enough

### the name is dumb
no u
