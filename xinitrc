#~/.xinitrc
exec /usr/bin/ratpoison&
sh /home/pi/autostart-rdp.sh
sudo sync && sudo poweroff
