This repository contains my Sway, Waybar, Wofi, Mako, Alacritty, and Gtklock configurations. Feel free to use and adapt them to your needs!

- **Sway**: Window manager config
- **Waybar**: Status bar config
- **Wofi**: Application launcher config
- **Mako**: Notification daemon config
- **Alacritty**: Terminal emulator config
- **Gtklock**: Lock screen config

## Make sure you have the following installed:
- **sway**: Window manager
- **swayidle**: Idle mamangement daemon for sway (optional)
- **waybar**: Status bar
- **wofi**: Application launcher
- **mako**: Notification daemon
- **alacritty**: Terminal emulator
- **gtklock**: Lock screen

**For waybar modules:**
- pipewire
- pipewire-pulse
- iwd
- bluez
- bluez-utils
- blueman
- curl

## Symlink the configs to the appropriate locations:
```bash
ln -s ~/dotfiles/sway ~/.config/sway
ln -s ~/dotfiles/waybar ~/.config/waybar
ln -s ~/dotfiles/wofi ~/.config/wofi
ln -s ~/dotfiles/mako ~/.config/mako
ln -s ~/dotfiles/alacritty ~/.config/alacritty
ln -s ~/dotfiles/gtklock ~/.config/gtklock
```

## Ensure the scripts are executable:
```bash
chmod +x ~/dotfiles/waybar/scripts/*.sh
```

## Notes
User-Specific Settings: Replace placeholders in the configs with your own paths (e.g., wallpapers, usernames).
Fonts: Install [Iosevka Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka).
Theme: Install [Nordic-bluish-accent](https://www.gnome-look.org/p/1267246) - used by gtklock.
**Optional:**
Icons: Install [Tela-circle-orange-dark](https://github.com/vinceliuice/Tela-circle-icon-theme)
Wallpaper: Download the wallpaper from [here](https://wall.alphacoders.com/big.php?i=1347602).
