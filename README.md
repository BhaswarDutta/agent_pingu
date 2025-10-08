# ⚠ THIS PROJECT IS A WORK IN PROGRESS ⚠

# ⚠ NOT MEANT FOR USE YET ⚠

# Agent Pingu

A Hyprland Tiling Window Manager setup **on top of Fedora Workstation**.

_Enjoy the productivity and flare of Hyprland with the stability of Fedora._

---

## ⚡ Prerequisites

**Note:** This setup is recommended **only on a fresh installation of Fedora Workstation**. Running it on an existing system may overwrite configs and installed packages.

- Update the system

```bash
sudo dnf update -y
```

- Check for `git`

```bash
git --version
```

- Possible outputs:
  - `git version X.XX.X` → Git is installed
  - `bash: git: command not found...` → Git is not installed
- Install `git` (if not installed).

```bash
sudo dnf install git -y
```

---

## 🛠 Installation Steps

### 1. Run the Prerequisites Script

```bash
chmod +x ./pre_req.sh
./pre_req.sh
```

- Enter your sudo password when prompted.
- The system will **reboot** after this step.

### 2. Run the Install Script

```bash
chmod +x ./install.sh
./install.sh
```

- Enter your sudo password when prompted.
- Log out and log back in to apply all changes.

---

## 🎉 Post-Installation

- Your system will now have:
  - Tiling window features on GNOME
  - Customized shortcuts
  - Pre-installed dev tools and apps
  - Alacritty, Brave, Zed, Spotify, Obsidian, Discord, and more

- You can further **customize the setup** as per your workflow and preferences.
