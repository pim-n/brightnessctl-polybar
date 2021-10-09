# brightnessctl polybar module
Polybar module using a custom script for adjusting screen brightness using the brightnessctl package.

The brightnessctl package is the only one that managed to change the brightness of my laptop screen. Other packages failed to work. Therefore, I wrote this script and module to be able to adjust screen brightness using brightnessctl from polybar. It is adjusted by scrolling up and down on the module.

## Installation
1. Download the files as a ZIP or clone into a temporary directory.
2. Move `brightnessctl.sh` to `~/.config/polybar/` file.
3. Make `brightnessctl.sh` executable by executing `chmod u+x ~/.config/polybar/brightnessctl.sh`.
4. Decide where you will put the module. Depending on your choice, add `brightnessctl` to the `modules-left=`,`modules-center=` or `modules-right=` row in your polybar config file.
5. Add the following lines to the `~/.config/polybar/config` file:
    
```
[module/brightnessctl]
type = custom/script
exec = ~/.config/polybar/brightnessctl.sh

scroll-up = exec brightnessctl set +5%
scroll-down = exec brightnessctl set 5%-
interval = 0.2

format-prefix = " "
label = %output%
label-foreground = #FFFFFF
```

## Note
- This module uses a custom icon from the `MaterialIcons` font package. If you do not have this you may install it, or choose your own gliph, simply replace the character that is assigned to `format-prefix`.
