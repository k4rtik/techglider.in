---
author: admin
comments: true
date: 2010-05-05 07:16:11+05:30

slug: simple-script-to-install-essential-packages-in-ubuntu-10-04-lucid-64-bit
title: Simple script to install essential packages in Ubuntu 10.04 Lucid 64-bit
wordpress_id: 368
categories:
- Linux
- On the Web
- TGF
tags:
- forums
- Linux
- ubuntu
---

Please note that this script has been tested only with a lucid 64-bit  installation. It requires an active internet connection to download  packages (a broadband connection, otherwise it will seem to take forever  to finish):

```bash
#!/bin/bash

# Adding Medibuntu Repositories
sudo  wget http://www.medibuntu.org/sources.list.d/$(lsb_release -cs).list  --output-document=/etc/apt/sources.list.d/medibuntu.list

sudo aptitude update && sudo aptitude install medibuntu-keyring && sudo aptitude update

sudo update-apt-xapian-index

# Install multimedia codecs
sudo apt-get remove gnash gnash-common libflashsupport mozilla-plugin-gnash swfdec-mozilla

sudo  apt-get install gstreamer0.10-plugins-bad gstreamer0.10-plugins-base  gstreamer0.10-plugins-good gstreamer0.10-plugins-ugly  gstreamer0.10-ffmpeg libdvdread4 libdvdnav4 libdvdcss2

sudo /usr/share/doc/libdvdread4/install-css.sh

sudo  apt-get install alsa-oss faac faad flashplugin-nonfree  gstreamer0.10-plugins-bad-multiverse  gstreamer0.10-plugins-ugly-multiverse libmp3lame0 non-free-codecs unrar  msttcorefonts ubuntu-restricted-extras vlc build-essential cdbs fakeroot  dh-make debhelper debconf dkms

# Install some of my favorite software

sudo apt-get install netspeed ntfs-config gparted wine vlc gnome-do gimp filezilla bluefish stardict chmsee
```



--  
Kartik - The TechGlider Guy  
[http://www.techglider.in](http://www.techglider.in/)
