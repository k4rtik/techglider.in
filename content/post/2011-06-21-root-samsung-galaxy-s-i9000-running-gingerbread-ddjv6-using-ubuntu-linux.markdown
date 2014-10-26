---
author: kartiksinghal
comments: true
date: 2011-06-21 17:01:54+00:00
layout: post
slug: root-samsung-galaxy-s-i9000-running-gingerbread-ddjv6-using-ubuntu-linux
title: Root Samsung Galaxy S i9000 running GINGERBREAD.DDJV6 using Ubuntu Linux
wordpress_id: 247
tags:
- Android
- FOSS
- hacker
- Informative
- Linux
- Samsung Galaxy
- terminal
- ubuntu
---

I bought a [Samsung Galaxy S](http://en.wikipedia.org/wiki/Samsung_Galaxy_S) i9000 just last month. The most prominent reason to buy an [Android phone](http://en.wikipedia.org/wiki/Android_%28operating_system%29) was that it's based on [Linux](http://en.wikipedia.org/wiki/Linux) and I love the [UNIX-based](http://en.wikipedia.org/wiki/Unix) OS. Besides, Android as a platform provides so many opportunities into application development (and even kernel hacking) that I was simply tempted to buy one since last year.

I have explored the phone since I got my hands on it - trying various apps, playing with 3G internet speeds (3.1 Mbps!), tons of widgets, shooting hundreds of pics with various modes and settings, upgrading to latest official firmware (from Froyo to Gingerbread), chatting (GTalk, Facebook), emailing, tweeting, keeping updated with latest news, instantly looking up words in dictionaries, managing my day with to-do lists, reading eBooks, playing Angry Birds, scanning random barcodes, watching videos, sending free SMS (via Free SMS Sender app), listening to music, blogging, etc. ...the list is almost endless.

The only thing I had delayed to do was rooting/flashing my phone as it voids the warranty from the manufacturer and there is always a little risk of things going bad. Another reason for this delay was my ignorance of availability of any Linux-compatible tool to do the actual flashing as I have grown so used to my latest [Linux Mint](http://www.linuxmint.com/) install that I simply forget to boot Windows every time. Almost all the guides out there describe the process using a leaked out utility from Samsung - **Odin** - that works only on Windows. Today I managed to root my phone using a cross-platform and open source utility called **Heimdall**.

_Disclaimer_: Follow the steps at your own risk, the author can not be held responsible for any damage that may occur to your device in the process.

Here are the steps:



	
  1. Go to http://www.glassechidna.com.au/products/heimdall/ and download the latest binary for your platform for both command line tool and the GUI front end. In my case I downloaded Debian Linux (AMD64 / Intel 64) editions of Heimdall 1.2.0 - Command Line and Heimdall Frontend 1.1.1 as I am running Linux Mint 64-bit (based on Ubuntu 11.04).

	
  2. Install them one by one by double clicking on the downloaded deb files - first the command line deb and then the front end one.

	
  3. Press Alt+F2 and launch 'heimdall-frontend' to check whether it installed properly.

	
  4. Carefully read instructions given at http://forum.xda-developers.com/showthread.php?t=788108, take necessary precautions as mentioned there and download proper version of CF-Root kernel from the same page. As JV6 is not listed, I downloaded JVO (v3.2) as it is known to work with most of the Gingerbread builds. Extract the zip obtained two times to get the [zImage](http://en.wikipedia.org/wiki/Vmlinux).

	
  5. Power off your Galaxy S and enter into 'Download mode' by pressing and holding VOLUME DOWN, POWER and HOME keys together till you see a yellow triangle with 'Downloading' message.

	
  6. Connect the phone to the computer via USB cable and make sure it is recognized by running `lsusb` command in the Terminal. You will see something similar to  
     `Bus 002 Device 003: ID 04e8:6601 Samsung Electronics Co., Ltd Z100 Mobile Phone`  
  in the output if it is recognized.

	
  7. Launch 'heimdall-frontend' as in step 3 and load the 'zImage' obtained in step 4 in Kernel (zImage) section.
  [![Heimdall Frontend 1.1](http://k4rtik.files.wordpress.com/2011/06/screenshot-heimdall-frontend-1-1.png?w=500)](http://k4rtik.files.wordpress.com/2011/06/screenshot-heimdall-frontend-1-1.png)

	
  8. Press Start and within a few seconds your phone will automatically reboot and you can disconnect the cable. You will find 3 new apps - CWM, Superuser, and Tweaks installed.


Now you can enjoy even more applications on your phone which need root access (like backup apps), or go on to install a custom ROM (as rooting is usually the first step in installing most custom firmwares) or simply play with the Linux terminal by installing Terminal Emulator (this app doesn't need root access, but without rooting you don't get access to even the simplest of shell commands like cat or less).

Comments and questions are welcome (as usual :-)

References:

	
  * This one led me to believe it is possible to it without using windows: http://blog.schauenburg.nl/2011/01/23/samsung-galaxy-s-i9000-android-2-2-root-how-to/

	
  * Must Read if you are new to Android rooting/modding/flashing business: http://forum.xda-developers.com/showthread.php?t=723596

	
  * Chainfire's CF-Root info and downloads: http://forum.xda-developers.com/showthread.php?t=788108

	
  * Instructions for rooting with Odin: http://www.androidtotal.com/root-samsung-galaxy-s-android-2.3.3-ddjv6-firmware/


Happy rooting,
_Ciao_
