# RaspiThincc
*atention.*
Not "Fully automated yet". I will change the README wen it's functional


An Easy to use RaspberryPi Thin Client.
The idea is to create a simple, low cost, low effort thin client to be use it by anyone with any multi-session server like a Windows TS or RDS, for example.

It's be based in a Raspbian Stretch Lite image, and the project itself will have a shell script to simplify the configurations and the dependencies installation (like a raspi-config style). 

# Components:
  - OS: Raspbian Stretch Lite
  - RDP client: xfreerdp
  - Windows Manager: Ratpoison (an excelent lightweight maded by Shawn Betts)
  - GUI Windows for users and passwords and users acctions: Zenity and Yad (it just works)
  - Bootup customization: Pixel
  - Bash scripting... for initialization, installation, program load
  
# Scripting strategy 
*Installer / Configuration:*
  - It will install all the dependencies.
  - After check all the requirements list, it will configure the files need it
  - System modification: it will modify the os components like boot-startup, mod-probe to ban unnecessary components

*Autostart*
  - A simple loop that make an rdp connection with the params included in the zenity dialog box (user and password) and pass it to the xfreerdp.
  If the connection fails, it will ask again for the credentials.
  Not very secure, i know. We will have to improve this.
