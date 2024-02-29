pkg update -y
pkg install termux-x11-nightly pulseaudio virglrenderer-android proot-distro curl -y
sed -i 's/# allow-external-apps = true/allow-external-apps = true/' .termux/termux.properties
pd install ubuntu-lts
pd login ubuntu-lts -- bash -c 'apt update -y'
pd login ubuntu-lts -- bash -c 'apt upgrade -y'
pd login ubuntu-lts -- bash -c 'apt install ubuntu-desktop gnome-terminal gnome-tweaks gnome-shell-extensions gnome-shell-extension-ubuntu-dock nautilus nano gedit dbus-x11 yaru-theme-gtk yaru-theme-icon sudo dconf-cli dconf-editor wget git -y'
pd login ubuntu-lts -- bash -c 'for file in $(find /usr -type f -iname "*login1*"); do rm -rf $file && done'
pd login ubuntu-lts -- bash -c 'wget -qO- https://raw.githubusercontent.com/Botspot/pi-apps/master/install | bash'
pd login ubuntu-lts -- bash -c 'sudo apt update'
pd login ubuntu-lts -- bash -c 'sudo apt install gnupg -y && echo "deb http://ftp.debian.org/debian buster main" >> /etc/apt/sources.list && sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys 648ACFD622F3D138 && sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9 &&sudo apt update && sudo apt install chromium'
pd login ubuntu-lts -- bash -c 'sudo apt-get install gpg && wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg && sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg && sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list' && rm -f packages.microsoft.gpg && sudo apt install apt-transport-https && sudo apt update && sudo apt install code'
pd login ubuntu-lts -- bash -c 'sed -i 's/chromium %U/chromium --no-sandbox %U/g' /usr/share/applications/chromium.desktop'
pd login ubuntu-lts -- bash -c 'sed -i 's/code --unity-launch %F/code --no-sandbox --unity-launch %F/' /usr/share/applications/code.desktop'
