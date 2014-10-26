---
author: kartiksinghal
comments: true
date: 2010-10-16 17:18:00+00:00
layout: post
slug: installing-64-bit-version-of-flash-player-on-fedora-13
title: Installing 64-bit version of Flash Player on Fedora 13
wordpress_id: 7
categories:
- post
tags:
- commands
- fedora
- Informative
- terminal
---

   

![](http://k4rtik.files.wordpress.com/2010/10/adobe_flash_player_icon-scaled5001.png?w=120)
![](http://k4rtik.files.wordpress.com/2010/10/fedora_project_logo-scaled5001.png?w=269)

I have been using Fedora 64-bit KDE for many months now, but was too lazy to install flash player (I don't usually need it as I am no YouTube junkie) until now. But today I had to visit some sites whose content seemed next to none without flash plugin on my browser. This forced me to install flash player finally.

Such a person who always wants to remain at the cutting edge as I am, I tried installing the latest Flash Player "Square" Preview Release 64-bit available from Adobe Labs. Here are the steps:






  1. Download 64-bit Release Flash Player for GNU/Linux from [http://labs.adobe.com/downloads/flashplayer10.html](http://labs.adobe.com/downloads/flashplayer10.html) OR you can use the command: `wget -c http://download.macromedia.com/pub/labs/flashplayer10/flashplayer_square_p2_64bit_linux_092710.tar.gz` to download using the command line.


  2. Extract the archive using the command: `tar xvf flashplayer_square_p2_64bit_linux_092710.tar.gz` You will obtain the extracted file `libflashplayer.so`


  3. Now switch to root user by issuing the command: `su` and supplying your root password.


  4. Remove any old instance of flash plugin if installed by the command: `yum remove flash-plugin`


  5. Now you can move the .so file to the plugins directly of Firefox by the following command: `mv libflashplayer.so /usr/lib64/mozilla/plugins/`


  6. Restart the browser and check whether the plugin installed successfully by typing `about:plugins` in the Address bar and hitting enter.


  7. You are done!




Be warned though, Adobe Labs says this on the preview release download page:




> **Important:** Please note that if you install the Flash Player "Square" preview, you will need to keep this version up to date by manually installing updates from the Flash Player "Square" download page on Adobe Labs. You will not receive automatic update notifications for future final releases of Flash Player, and you will need to manually uninstall Flash Player "Square" before installing a final shipping version of Flash Player.




If you faced any problem, feel free to ask by posting a comment.


  
