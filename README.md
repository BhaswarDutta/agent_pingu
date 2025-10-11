# Agent Pingu 🐧

A Hyprland Tiling Window Manager setup **on top of Fedora Workstation** rather than Arch Linux.

_Enjoy the productivity and flair of Hyprland with the stability of Fedora with configs which are simple by design so you can customize them for yourself._

---

## 🎨 Features

- **Automatic Tiling** with **Keyboard Driven Workflow**
- **Minimal Setup** with configs in single files for each program
- Easy to customize
- Terminal preconfigured with Alacritty, Fish, Starship and eza
- **Zed Code Editor** preconfigured
- Beautiful uniform theme of **Catppuccin Mocha** throughout the system
- Configured Waybar, Hyprshot, Hyprlock, swww and Rofi File Launcher
- Flatpak Electron Apps configured properly to use Wayland (and not XWayland).
- ChatGPT, ClaudeAI and Spotify all at press of a Keyboard Shortcut
- Gnome is still available as backup if needed

---

## ⌨️ Keyboard Shortcuts

- These are the defaults.
- Feel free to customize them as per your needs

| Shortcut                              | Function                                              |
| ------------------------------------- | ----------------------------------------------------- |
| `Super + T`                           | Terminal                                              |
| `Super + Q`                           | Close Window                                          |
| `Super + B`                           | Web Browser                                           |
| `Super + F`                           | File Manager                                          |
| `Super + M`                           | Music                                                 |
| `Super + A`                           | ChatGPT                                               |
| `Super + Shift + A`                   | ClaudeAI                                              |
| `Super + E`                           | Emoji Picker                                          |
| `Super + Arrow Keys`                  | Change focus of window                                |
| `Super + Shift + Arrow Keys`          | Change position of focused window                     |
| `Super + Esc`                         | Log Out                                               |
| `Super + L`                           | Lock Screen                                           |
| `Prtsc`                               | Take Screenshot of whole Monitor                      |
| `Shift + Prtsc`                       | Take Screenshot of a region                           |
| `Super + 1/2/3/4/5/6/7/8/9/0`         | Move to Workspace 1/2/3/4/5/6/7/8/9/10                |
| `Super + Shift + 1/2/3/4/5/6/7/8/9/0` | Move focused window to Workspace 1/2/3/4/5/6/7/8/9/10 |
| `Super + Shift + W`                   | Change Wallpaper                                      |
| `Super + Shift + B`                   | Reload Top Bar (Waybar)                               |

---

## 💭 Prerequisites

- This script is meant to be used on a fresh installation of **Fedora Workstation**.
- Using it on other distros will not work and using it on an already setup Fedora Workstation might overwrite your older configs.
- Use at your own discretion.
- Feel free to go through the scripts before running them (its good practice anyway 😀)

### 1. Update your system

```bash
sudo dnf update -y
```

### 2. Install Git if not already installed

```bash
sudo dnf install -y git
```

---

## 🛠 Installation

### 1. Clone the directory using the following command

```bash
git clone https://github.com/BhaswarDutta/agent_pingu.git
```

### 2. Change directory and enable run permission

```bash
cd agent_pingu
chmod +x install.sh
```

### 3. Run the script

```bash
./install.sh
```

### 4. Enter your root password and wait for script to finish running

- You will be greeted by the following text when it finishes running

```
We are done!!🎉🎉
Log out and select your profile
Then select hyprland from the cog icon on the bottom right corner
Log back in and enjoy your session
```

- This takes about 10 mins to 30 mins depending on your Internet Speed.

### 5. Logout of your session and select Hyprland in your Login Window (GDM) to log into Hyprland

### 6. Enjoy your new setup

- Feel free to go through the configs and customize the whole setup to your needs. It is minimal by nature so that it is easy to customize.
- Refer to the awesome Hyprland Wiki and Waybar Wiki for info regarding further customization.
- [Hyprland Wiki](https://wiki.hypr.land/)
- [Waybar Wiki](https://github.com/Alexays/Waybar/wiki)

---

## 😔 Uninstallation

- Gnome is still here and you can switch back to Gnome via the following steps.
- If already in Hyprland then press `Super(Windows) + Esc` to log out.
- Select **Gnome** from the cog in the right corner below.
- Log Back into Gnome Session
- To remove the configs you can easily delete the folders

```bash
cd ~/.config
rm -rf hypr zed alacritty fish starship.toml
```

---

## ⚖️ License

- This project is available under GPLv3 License
- Check License file for further information

---

## 😌 Attribution

- [My Linux for Work](https://github.com/mylinuxforwork/dotfiles) for the `fastfetch` config and his amazing videos for learning how to configure on my own
- [adi1090x](https://github.com/adi1090x/rofi) for the `rofi` theme
- [Typecraft](https://github.com/typecraft-dev/dotfiles) for the `hyprlock` theme and his awesome videos introducing the hyprland ecosystem.
- [Sane1090x](https://www.youtube.com/@sane1090x) for his awesome videos regarding `swww` , `waybar` and `hyprland`
