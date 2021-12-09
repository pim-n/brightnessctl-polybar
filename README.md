### brightnessctl polybar module
Polybar module using a custom script for adjusting screen brightness using the brightnessctl package.

The brightnessctl package is the only one that managed to change the brightness of my laptop screen. Other packages failed to work. Therefore, I wrote this script and module to be able to adjust screen brightness using brightnessctl from polybar. It is adjusted by scrolling up and down on the module.

### Installation
1. Download the files as a ZIP or clone into a temporary directory.
2. Move `brightnessctl.sh` to `~/.config/polybar/` folder.
3. Make `brightnessctl.sh` executable by executing `chmod +x ~/.config/polybar/brightnessctl.sh`.
4. Decide where you will put the module. Depending on your choice, add `brightnessctl` to the `modules-left`,`modules-center` or `modules-right` variable in your polybar config file.
5. Add the following lines to the `~/.config/polybar/config` file:
    
```
[module/brightnessctl]
type = custom/script
exec = ~/.config/polybar/brightnessctl.sh

scroll-up = exec brightnessctl set +5%
scroll-down = exec brightnessctl set 5%-
interval = 0.5

label = %output%
label-foreground = ${colors.foreground}
```

6. Adjust the `interval` and `label-foreground` values to your liking.

### Note
- This module uses custom icons from the `MaterialIcons` font package by Google. If you do not have this you may install it (it's most likely in your repository), or choose your own gliph, simply replace the characters that are assigned in the shell script.
