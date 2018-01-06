---
author: kartiksinghal
comments: true
date: 2010-09-25 09:53:00+05:30

slug: ubuntu-tips-and-tricks-part-1
title: Ubuntu Tips and Tricks - Part 1
wordpress_id: 9
categories:
- post
tags:
- commands
- gnome
- Informative
- terminal
- ubuntu
---

   

Just learned some new commands on Ubuntu:






  1. If sometime you get into a (big!) trouble such as the Gnome panels not loading but the desktop is visible, you can open the gnome-terminal using the key combination `Ctrl + Alt + T` (of course this is a good shortcut for normal desktop usage too).


  2. Because of the above problem, you may want to create a bootable drive to reinstall Ubuntu, but how do you do that as you cannot load the Ubuntu Startup Disk Creator? Don't worry there is a way - use the following command:


`usb-creator-gtk &`


to open the Startup Disk Creator utility. I am assuming you had some iso image on the hard disk of your computer. If not you can transfer it using a flash drive and cp command.


  3. BTW if you don't know how to mount a pen drive if it doesn't happen automatically, use `sudo fdisk -l` after inserting the pen drive and take note of the device id, most of the times it will be `/dev/sdb1`. Then issue the following command:


`sudo mount /dev/sdb1 /mnt`


to mount sdb1 to /mnt directory.


  4. And yeah there is `sudo poweroff` to shutdown the system properly. 


  
