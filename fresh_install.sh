# Update and Upgrade Everything First
sudo pacman -Sy
sudo pacman -Syu

# Optional Install VMware Tools
# Uncomment If Installing In VMWare As Guest
#sudo pacman -Sy net-tools gtkmm
#sudo pacman -Sy open-vm-tools
#sudo pacman -Sy xf86-video-vmware
#sudo pacman -Sy xf86-video-vmware
#sudo pacman -Sy xf86-input-vmmouse
#sudo systemctl enable vmtoolsd

# Install Programs
sudo pacman -S chromium firefox vim libreoffice-fresh git gimp vlc screen tmux pymol

# Install Java
sudo pacman -S jdk8-openjdk

# Install R & Supporting Packages
sudo pacman -S r


# Install UI Elements
sudo pacman -S arc-kde kvantum-theme-arc
sudo pacman -S papirus-icon-theme

# Install PacAur & Yaourt
sudo pacman -S pacaur yaourt

# Install Programming IDEs
pacaur -S visual-studio-code
pacaur -S rstudio-desktop-bin

# List of KDE Widgets To Get:
# Simple System Monitor
# Win7 Volume Mixer
# Simple Menu

# Reboot After Install
reboot
