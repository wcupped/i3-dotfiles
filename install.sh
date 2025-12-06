echo "Installing dependencies"

if [ -x "$(command -v pacman)" ]; then
	sudo pacman -Sy fish alacritty i3 dmenu i3status mate-polkit picom blueman setxkbmap xdg-desktop-portal xdg-desktop-portal-wlr feh ttc-iosevka j4-dmenu-desktop scrot nautilus firefox
elif [ -x "$(command -v apt)" ]; then
	sudo apt update && sudo apt install -y fish alacritty i3 dmenu i3status amte-polkit picom blueman setxkbmap xdg-desktop-portal xdg-desktop-portal-wlr feh j4-dmenu-desktop scrot nautilus firefox
else
	echo "Your distribution isn't supported, skipping dependencies installation"
fi

cp dots/* ~/.config/

echo "Sucessfully installed dotfiles!"
echo "Thank you for using my dots!"
