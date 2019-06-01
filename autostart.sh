#!/bin/bash

SERVER="<server_ip_address>"
PORT="3389"
USB="/drive:USB,/media/pi"
AUDIO="/sound"
while true
do
	RES=$(xfreerdp -f /v:$SERVER:$PORT \
	/u:$(zenity \
		--entry \
		--title="User" \
		--text="Enter your Username") \
	/p:$(zenity \
		--entry \
		--title="Password" \
		--text="Enter your password" \
		--hide-text) \
	/d:.\
		/cert-ignore \
		+clipboard \
		/sec-tls \
		$USB \
		$AUDIO \ 
		+compression \ 
		-menu-anims \
		+fonts \
	2>&1)
	
	echo $RES | grep -q "Authentication failed" && yad --center --image="error" --window-icon="error" --title "Authentication failed" --text="Please, check again the username and password" --text-align=center --width=320 --button=gtk-ok --buttons-layout=spread && continue

	echo $RES | grep -q "Connection failed" && yad --center --image="error" --window-icon="error" --title "Connection failed" --text="The server is unreachable, please check the lan cable or call to your the support" --text-align=center --width=320 --button=gtk-ok --buttons-layout=spread
break
done
