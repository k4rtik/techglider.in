---
author: admin
comments: true
date: 2009-09-19 15:08:30+05:30

slug: essential-software-for-a-working-ubuntu-9-04-desktop
title: Essential software for a working Ubuntu 9.04 Desktop
wordpress_id: 351
categories:
- Linux
- On the Web
- TGF
tags:
- distro
- forums
- Linux
- open source
- ubuntu
---

These are the steps to follow if you want your  latest Ubuntu install to have all the essential software and codecs  installed so that you can use your Ubuntu linux system as a/an  replacement/addition of windows operating system.

You should be  connected to internet to follow these steps. You can use Ctrl+Shift+V to  paste the copied code in Terminal, which can be accessed as  Applications->Accessories->Terminal.



	
  * First of all, choose the best server in System->Administration->Software Sources.

	
  * Then open up the terminal and type/copy these steps and press Enter.

    ```
    sudo wget http://www.medibuntu.org/sources.list.d/jaunty.list --output-document=/etc/apt/sources.list.d/medibuntu.list
    sudo aptitude update && sudo aptitude install medibuntu-keyring && sudo aptitude update
    sudo update-apt-xapian-index
    ```

	
  * Now, update the system using System->Administration->Update Manager.

	
  * Finally to install software use this code:

    ```
    sudo  apt-get remove gnash gnash-common libflashsupport mozilla-plugin-gnash  swfdec-mozilla && sudo apt-get install alsa-oss faac faad  flashplugin-nonfree gstreamer0.10-ffmpeg gstreamer0.10-plugins-bad  gstreamer0.10-plugins-bad-multiverse gstreamer0.10-plugins-ugly  gstreamer0.10-plugins-ugly-multiverse gstreamer0.10-pitfdll libmp3lame0  non-free-codecs sun-java6-fonts sun-java6-jre sun-java6-plugin unrar  msttcorefonts acroread ubuntu-restricted-extras libdvdcss2 libdvdread4  libdvdnav4 vlc build-essential cdbs fakeroot dh-make debhelper debconf  libstdc++5 dkms
    ```


If you face any problem or don't understand any of these steps, feel free to post a reply here describing the problem.


--  
Kartik - The TechGlider Guy  
[http://www.techglider.in](http://www.techglider.in/)
