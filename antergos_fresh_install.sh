## Update and Upgrade Everything First
sudo pacman -Sy
sudo pacman -Syu

# Optional Install VMware Tools
# Uncomment If Installing In VMWare As Guest
#sudo pacman -Sy net-tools gtkmm3
#sudo pacman -Sy open-vm-tools
#sudo pacman -Sy xf86-video-vmware
#sudo pacman -Sy xf86-input-vmmouse
#sudo systemctl enable vmtoolsd

# Packages for Laptop Install Power Management
#sudo pacman -S ethtool smartmontools
#sudo pacman -S tlp tlp-rdw
#sudo systemctl enable tlp.service
#sudo systemctl enable tlp-sleep.service
#sudo systemctl enable NetworkManager-dispatcher.service
#sudo systemctl mask systemd-rfkill.service
#sudo systemctl mask systemd-rfkill.socket

# Packages Specific to Macbook Pro Early 2015 Retina
#sudo pacman -S xf86-video-intel mesa-libgl libva-intel-driver libva
#sudo pacman -S xf86-input-synaptics
#sudo pacman -S vpnc networkmanager-vpnc

# Packages for Nvidia Desktop
sudo pacman -S nvidia nvidia-settings nvidia-utils opencl-nvidia

# Install Programs
sudo pacman -S chromium firefox vim libreoffice-fresh git gimp vlc screen tmux pymol rsync unison openssh cron

# Install Java
sudo pacman -S jdk8-openjdk

# Install R & Supporting Packages
sudo pacman -S r hdf5 hdf5-openmpi gcc-fortran

# Install UI Elements
sudo pacman -S arc-kde
sudo pacman -S papirus-icon-theme

# Install PacAur
#sudo pacman -S pacaur
# New Pacaur Install Process
mkdir -p /tmp/pacaur_install
cd /tmp/pacaur_install
sudo pacman -S binutils make gcc fakeroot pkg-config --noconfirm --needed
sudo pacman -S expac yajl git --noconfirm --needed
curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=cower
makepkg PKGBUILD --skippgpcheck --install --needed
curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
makepkg PKGBUILD --install --needed
cd ~
rm -r /tmp/pacaur_install

# Install Fonts
sudo pacman -S ttf-dejavu ttf-droid ttf-fira-mono ttf-fira-sans ttf-liberation ttf-linux-libertine-g ttf-tlwg ttf-ubuntu-font-family
pacaur -S ttf-dejavu ttf-google-fonts-typewolf

# Install Programming IDEs
pacaur -S visual-studio-code-bin
pacaur -S rstudio-desktop-bin

# List of KDE Widgets To Get:
# Simple System Monitor
# Win7 Volume Mixer
# Simple Menu

# Reboot After Install
reboot
