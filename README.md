# hyprland-dotfi


<div  align="center">
  
![](https://img.shields.io/github/stars/jR4dh3y/qtiledots?style=for-the-badge&logo=starship&color=83c5be&logoColor=D9E0EE&labelColor=252733)
![](https://img.shields.io/github/last-commit/jR4dh3y/qtiledots?&style=for-the-badge&color=006d77&logoColor=D9E0EE&labelColor=252733)
<a href="https://github.com/jR4dh3y/qtiledots/blob/main/LICENSE">
<img alt="License" src="https://img.shields.io/github/license/h1tarxeth/Dots?style=for-the-badge&logo=starship&color=1d3557&logoColor=D9E0EE&labelColor=252733" />
</a>
</div>

This repo holds the dotfiles for my hyprland setup on Arch Linux. [Hyprland](https://wiki.hyprland.org/). I intend to keep adding on this.


## Installation

To use these configuration files, you need to have Hyprland and some dependences installed on your system. You can install it by running the following command:

```bash
yay -Syu base-devel hyprland feh pywal-git dunst zsh pamixer playerctl brightnessctl kitty neofetch thunar rofi ranger pulseaudio alsa-utils neovim vim git firefox xrander network-manager-applet networkmanager pavucontrol waybar swaybg swaylock sddm gtop flameshot firewalld eza cbonsai-git duf cava bluez-utils bluez blueman bitwarden asciiquarium--noconfirm --needed
```


## Usage

To use these configuration files, simply copy the contents of this repository to which ever directory you would like.


```bash
git clone https://github.com/rx-py/hyprland-dotfi.git 
cd hyprland-dotfi
```

```bash
cp -R ./. ~/
```

## Configuration Files

The following configuration files are included in this repository:

- `.configs`: This folder holds the main configs for the apps I use along with hyprland
- `scripts`: This folder contains system scripts that allows for better functionality.
- `wal`: This folder would be where all images are stored


nvim theme = [everforest](https://github.com/sainnhe/everforest)


## Conclusion

Should now have a working installation of Hyprland with these configuration files. 

## Screenshots
![Screenshot](wal/nfscreen.png)
![Screenshot](wal/page1.png)
