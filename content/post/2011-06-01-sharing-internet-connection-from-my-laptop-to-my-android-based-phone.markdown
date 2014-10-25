---
author: kartiksinghal
comments: true
date: 2011-06-01 19:56:00+00:00
layout: post
slug: sharing-internet-connection-from-my-laptop-to-my-android-based-phone
title: Sharing Internet Connection from my Laptop to my Android-based Phone
wordpress_id: 226
tags:
- Android
- laptop
- Linux
- Windows
---

I was disheartened to know that my newly bought [Samsung Galaxy S](http://en.wikipedia.org/wiki/Samsung_Galaxy_S) i9000 could not connect to an [ad-hoc network](http://en.wikipedia.org/wiki/Wireless_ad_hoc_network) created from my laptop.

After a little Googling, I found out the easiest way to turn a laptop into a [WiFi](http://en.wikipedia.org/wiki/Wi-Fi) [Hot Spot](http://en.wikipedia.org/wiki/Hotspot_%28Wi-Fi%29) (for uses such as sharing Internet connection with my [Android phone](http://en.wikipedia.org/wiki/Android_%28operating_system%29)) - [Virtual Router](http://virtualrouter.codeplex.com/) and now I am enjoying fast internet on my phone.

As I call the above the easiest, it's not the best method and doesn't offer much features either. If your needs are not satisfied you can look for [Connectify](http://www.connectify.me/) - the inspiration behind Virtual Router.

I forgot to mention that both of these methods work for windows, I still have to figure out a way to do the same under [Linux](http://en.wikipedia.org/wiki/Linux).

**EDIT (2012-04-28):** Okay, it's been too long, frankly because I was not using Linux much all this while (thanks to my laptop which used to turn into a heater with almost all distros I tried), but finally I found a way to share net from Linux too. I am on Android 2.3.6 XXJW4 on my SGS i9000. The following steps should work well with all versions of gingerbread:



	
  * Root your Android. Folks at [Android Advices](http://androidadvices.com) usually come out with the easiest possible tutorials for things like this, I followed the steps available [here](http://androidadvices.com/root-galaxy-official-pack-xxjw4-236-firmware/), YMMY.

	
  * Take a backup of your current /system/bin/wpa_supplicant file using a root-enabled file manager (Root Manager is a good option, though not available for gratis)

	
  * Download the latest version of AdHoc fix available at [this thread at XDA Forums](http://forum.xda-developers.com/showthread.php?t=1071138), and transfer it your phone's sdcard.

	
  * Either apply the fix using by booting into recovery or just extract wpa_supplicant file from the zip and overwrite it at /system/bin using your favorite root-enabled file manager.

	
  * Create a new ad hoc network in your linux system, and voilà you will magically find it when your phone scans for wi-fi networks.


