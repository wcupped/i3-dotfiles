echo "Installing dependencies"

if [ -x "$(command -v pacman)" ]; then
	sudo pacman -Sy --needed fish alacritty i3-wm dmenu i3status mate-polkit picom blueman xdg-desktop-portal xdg-desktop-portal-wlr feh ttc-iosevka j4-dmenu-desktop scrot nautilus
elif [ -x "$(command -v apt)" ]; then
	sudo apt update && sudo apt install -y fish alacritty i3 dmenu i3status mate-polkit picom blueman xdg-desktop-portal xdg-desktop-portal-wlr feh j4-dmenu-desktop scrot nautilus
elif [ -x "$(command -v xbps-install)" ]; then
	sudo xbps-install -S fish-shell alacritty i3 dmenu i3status mate-polkit picom blueman xdg-desktop-portal xdg-desktop-portal-wlr feh j4-dmenu-desktop scrot nautilus
else
	echo "Your distribution isn't supported, skipping dependencies installation"
fi

cp dots/* ~/.config/ -r

echo "Sucessfully installed dotfiles!"
echo "Thank you for using my dots!"
