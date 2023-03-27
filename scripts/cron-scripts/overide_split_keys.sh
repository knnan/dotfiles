gsettings set org.gnome.mutter.keybindings toggle-tiled-right  "['disabled']"  
gsettings set org.gnome.mutter.keybindings toggle-tiled-left  "['disabled']"  
echo "last run on "$(date) > ~/scripts/cron-scripts/cron.log
