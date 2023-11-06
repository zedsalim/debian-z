
<br />
<div align="center">
  <a href="https://github.com/zedsalim/debian-z">
    <img src="[ign]/logo.png" alt="Logo" width="70%">
  </a>

  <h3 align="center">Debian Minimal Setup with i3</h3>

  <p align="center">
    Automate and Style Your Debian Setup with Debian-Z!
    <br />
</div>

## About The Project

- **WM:** [i3-gaps](https://github.com/Airblader/i3)
- **OS:** [Debian Linux](https://debian.org)
- **Terminal:** [alacritty](https://github.com/alacritty/alacritty)
- **Shell:** [bash](https://wiki.debian.org/Bash)
- **Status Bar:** [polybar](https://github.com/polybar/polybar)
- **Compositor:** [picom](https://github.com/ibhagwan/picom)
- **Editor:** [vim](https://github.com/vim/vim)
- **Browser:** [Brave](https://github.com/brave/brave-browser)
- **File Manager:** [pcmanfm](https://github.com/lxde/pcmanfm)
- **Application Launcher:** [rofi](https://github.com/davatorium/rofi)


This project is a shell script that automates the installation process for a minimal Debian system, along with the i3 window manager and Ly Console Display Manager. It aims to provide an easy and efficient way to set up a Debian-based desktop environment with a Stylish lightweight and customizable window manager.

The script installs the necessary packages and applications required for daily drive and a functional and beutiful i3wm setup, with Ly Console Display Manager, and other recommended utilities. It also configures various system settings to optimize the user experience and provides a clean minimal and stylish i3 configuration. 

## Available Themes

| Moon (Default) | BlueNova | Dracula | Darkness | Nord | Horizon | Pink |
|--------------|--------------|--------------|--------------|--------------|--------------|--------------|
| ![Screenshot 1]([ign]/img/moon/s1.png) | ![Screenshot 1]([ign]/img/bluenova/s1.png) | ![Screenshot 2]([ign]/img/dracula/s1.png) | ![Screenshot 3]([ign]/img/darkness/s1.png) | ![Screenshot 3]([ign]/img/nord/s1.png) |  ![Screenshot 3]([ign]/img/horizon/s1.png) |  ![Screenshot 3]([ign]/img/pink/s1.png) |    
| ![Screenshot 1]([ign]/img/moon/s2.png) | ![Screenshot 1]([ign]/img/bluenova/s2.png) | ![Screenshot 2]([ign]/img/dracula/s2.png) | ![Screenshot 3]([ign]/img/darkness/s2.png) | ![Screenshot 3]([ign]/img/nord/s2.png) |  ![Screenshot 3]([ign]/img/horizon/s2.png) |  ![Screenshot 3]([ign]/img/pink/s2.png) |
| ![Screenshot 1]([ign]/img/moon/s3.png) | ![Screenshot 1]([ign]/img/bluenova/s3.png) | ![Screenshot 2]([ign]/img/dracula/s3.png) | ![Screenshot 3]([ign]/img/darkness/s3.png) | ![Screenshot 3]([ign]/img/nord/s3.png) |  ![Screenshot 3]([ign]/img/horizon/s3.png) |  ![Screenshot 3]([ign]/img/pink/s3.png) |
| ![Screenshot 1]([ign]/img/moon/s4.png) | ![Screenshot 1]([ign]/img/bluenova/s4.png) | ![Screenshot 2]([ign]/img/dracula/s4.png) | ![Screenshot 3]([ign]/img/darkness/s4.png) | ![Screenshot 3]([ign]/img/nord/s4.png) |  ![Screenshot 3]([ign]/img/horizon/s4.png) |  ![Screenshot 3]([ign]/img/pink/s4.png) |

---

## Pre-Installation

To use this script and set up your Debian system with my i3 config and Ly, follow these steps:

1. Install a fresh minimal Debian system. You can download the minimal installation ISO from the official Debian website.

2. Follow my installation guide here [How To Install Debian-Z](https://github.com/zedsalim/debian-z-tutor) .

3. Once the base system is installed:
### Install git and vim
```bash
sudo apt install -y git vim
```
### Clone this repo
```bash
git clone https://github.com/zedsalim/debian-z
cd debian-z
ls
.git   config  optional  1-software.sh  3-fonts.sh  README.md
[ign]  fonts   theme     2-setup.sh     4-rice.sh   run_me.sh
```
### Categorization of the directories and the scripts
1. Scripts:   
1-software.sh: A script responsible for install all the softwares and the packages needed for a minimal Debian system, **(you must see what inside it and you can custumize it as you need)**.   
2-setup.sh: A script that handles the initial setup of the i3wm environment and Ly Console Display Manager.   
3-fonts.sh: A script for font configuration and installation.   
4-rice.sh: A script that performs further customization or "ricing" of Debian-Z i3wm environment.   
run_me.sh: A script meant to be executed to apply the configurations and setups provided by other scripts **(this is the only script you need to run)**   


2. Directories **(Do not modify)**:   
config: The configuration file for the Debian-Z setup.   
fonts: A directory containing font files used in the Debian-Z configuration.   
theme: A directory with theme-related files.   
optional: A folder containing optional configuration files and scripts that are not necessary for the basic setup (check them out).   

3. Other Files **(Delete them if you want)**:   
README.md: A Markdown file serving as the main documentation or guide for this project.   
[ign]: A folder that contains Essential Files for the README.md.   

**_Please note that the directories are marked as "Do not modify" to indicate that they contain important files and resources that should not be altered unless you have specific knowledge or intention to modify them._**

## Installation
**To install this setup, simply run ./run_me.sh, enter your password, and wait for the installation to complete.**
```bash
./run_me.sh
```

## Post-Installation
> Press Super + Shift + h to view the Guide and read it all.
> NOTE: The 'Super' Key is the 'Windows' Key

## Usage
> The Super key is the Windows key
<h2>Keybindings:</h2>

 ### Window Manager Keybindings:

| Keybinding        | Action                                      |
| ----------------- | ------------------------------------------- |
| super + shift + h | Opens this Guide                            |
| super + Escape    | Reloads sxhkd config                        |
| super + q         | Closes the current window                   |
| super + shift + c | Reloads the i3 window manager configuration |
| super + shift + r | Restarts the i3 window manager              |
| super + shift + q | Exits i3 window manager                     |

### Application Keybindings:

| Keybinding                     | Action                                          |
| ------------------------------ | ----------------------------------------------- |
| super + Return (Enter)         | Launches alacritty terminal                     |
| super + shift + Return (Enter) | Launches alacritty terminal in floating mode    |
| super + p                      | Opens rofi application                          |
| alt + w                        | Opens rofi (show mode)                          |
| super + n                      | Opens pcmanfm file manager                      |
| super + r                      | Opens ranger file manager                       |
| super + g                      | Opens Github Desktop (not installed by default) |
| super + w                      | Launches Brave Browser                          |
| super + c                      | Launches VSCodium                               |
| super + d                      | Launches Discord (not installed by default)     |
| super + t                      | Launches Telegram Desktop                       |
| Print (Impr écran Syst)        | Opens flameshot screenshot tool (GUI mode)      |

### Audio Keybindings:

| Keybinding           | Action                       |
| -------------------- | ---------------------------- |
| XF86AudioMute        | Toggles audio mute           |
| XF86AudioLowerVolume | Decreases audio volume by 2% |
| XF86AudioRaiseVolume | Increases audio volume by 2% |

### Brightness Keybindings:

| Keybinding            | Action                        |
| --------------------- | ----------------------------- |
| XF86MonBrightnessDown | Decreases audio volume by 10% |
| XF86MonBrightnessUp   | Increases audio volume by 10% |

### i3 Window Manager Keybindings:

| Keybinding              | Action                                            |
| ----------------------- | ------------------------------------------------- |
| super + v               | Splits the current container vertically           |
| super + h               | Splits the current container horizontally         |
| super + f               | Toggles fullscreen mode for the current container |
| super + shift + f       | Toggles floating mode for the current container   |
| super + control + space | Toggles focus between tiling and floating mode    |
| super + alt + a         | Focuses on the parent container                   |
| alt + shift + s         | Change container layout to stacked                |
| alt + shift + t         | Change container layout to tabbed                 |
| alt + shift + e         | Change container layout to toggle split           |

### Workspace Keybindings:

| Keybinding                 | Action                                                 |
| -------------------------- | ------------------------------------------------------ |
| super + \[1->9,0\]         | Switches to the specified workspace                    |
| super + shift + \[1->9,0\] | Moves the current container to the specified workspace |

### Window Movement Keybindings:

| Keybinding                                | Action                                            |
| ----------------------------------------- | ------------------------------------------------- |
| super + \[h, j, k, l\]                    | Focuses on the window in the specified direction  |
| super + shift + \[h, j, k, l\]            | Moves the window in the specified direction       |
| super + \[Left, Down, Up, Right\]         | Focuses on the window in the specified direction  |
| super + shift + \[Left, Down, Up, Right\] | Moves the window in the specified direction       |
| super + tab                               | Focuses on the last two workspaces back and forth |

### Additional Keybindings:

| Keybinding                                                             | Action                                                       |
| ---------------------------------------------------------------------- | ------------------------------------------------------------ |
| alt + x (Where I keep all the courses and videos I need to learn from) | Opens ranger in ~/Downloads/Watch (not created by default)   |
| alt + c                                                                | Opens the config files that I edit frequently                |
| alt + t                                                                | Change the theme on the fly                                  |
| alt + b                                                                | Opens my bookmarks (add yours inside ~/config/bookmarks.txt) |
| alt + y (you must copy first the URL of a youtube video)               | Script that plays youtube videos using the mpv               |
| alt + s (Create your own schedule in ~/Pictures/schedule.png)          | Opens my Work/Studies Schedule                               |
| F1 (Add your wallpapers in ~/.config/wallpapers/)                      | Changing the wallpaper for the main monitor                  |
| F2                                                                     | Changing the wallpaper for two monitors                      |

### Gaps Keybindings:

| Keybinding                               | Action                                      |
| ---------------------------------------- | ------------------------------------------- |
| super + shift + n                        | Adjusts inner and outer gaps simultaneously |
| super + x                                | Increases outer gaps by 5                   |
| super + shift + x                        | Decreases outer gaps by 5                   |
| super + z                                | Increases inner gaps by 5                   |
| super + shift + z                        | Decreases inner gaps by 5                   |
| super + ctrl + \[Left, Down, Up, Right\] | Resizes the current window                  |

### System Keybindings:

| Keybinding        | Action                                    |
| ----------------- | ----------------------------------------- |
| super + shift + b | Reboots the system (sudo reboot)          |
| super + shift + s | Shuts down the system (sudo shutdown now) |
