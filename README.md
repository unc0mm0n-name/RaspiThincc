# RaspiThincc

An Easy to use RaspberryPi Thin Client
The idea is to create a simple, low cost, low effort thin client to use it with any tier 1 support level to connect it to any
multi-session server like a Windows TS or RDS, for example.

How?
Well i will start with a minimal custom raspbian image, with simple bash script (raspi-config style) that installs all the dependencies
and configuration files need it.

It's based on:
  - OS: Raspbian Stretch Lite
  - RDP client: xfreerdp
  - Windows Manager: Ratpoison (an excelent lightweight maded by Shawn Betts)
  - GUI Windows for users and passwords and users acctions: Zenity and Yad (it just works)
  - Bootup customization: Pixel
  - Bash scripting... of course

Any ideas are welcome.
