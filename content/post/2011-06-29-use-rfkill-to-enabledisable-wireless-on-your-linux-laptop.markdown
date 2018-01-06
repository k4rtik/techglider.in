---
author: kartiksinghal
comments: true
date: 2011-06-29 18:30:56+05:30

slug: use-rfkill-to-enabledisable-wireless-on-your-linux-laptop
title: Use rfkill to Enable/Disable Wireless on your Linux Laptop
wordpress_id: 277
tags:
- Bluetooth
- commands
- Data Communications
- dell
- gnu/linux
- Hardware
- Informative
- laptop
- Linux
- Smartphone
- terminal
- ubuntu
- Wi-Fi
- Wireless
- Wireless LAN
- xps
---

[![This notebook computer is connected to a wirel...](http://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Wireless_network.jpg/300px-Wireless_network.jpg)](http://commons.wikipedia.org/wiki/File:Wireless_network.jpg)

Imagine a situation when you have to book an air/train ticket in a jiffy, or check an important mail quickly and the only option you have is a wi-fi connection from either your [smart phone](http://en.wikipedia.org/wiki/Smartphone) or surroundings, and you have only some [Linux](http://en.wikipedia.org/wiki/Linux) variant installed on your system. And even after installing all the necessary drivers, you are unable to get the wi-fi on your laptop working? Frustrating right? If yes, then you might want to read on about this useful utility called rfkill which you can keep in handy for those weary situations.

I own a Dell Studio XPS 1645 and have always found it cumbersome to get the wi-fi working on my system, mainly during those geek/hacker meetups, the only times I have to use [wireless Internet](http://en.wikipedia.org/wiki/Wi-Fi). I remember randomly switching wireless on and off through the hardware switch and rebooting my system multiple times in order to get it working. Well, this was the situation until I discovered rfkill - a tool for enabling and disabling [wireless devices](http://en.wikipedia.org/wiki/Wireless) including [Wireless LAN](http://en.wikipedia.org/wiki/Wireless_LAN), [Bluetooth](http://en.wikipedia.org/wiki/Bluetooth), etc. Here follows a tutorial on how to use it (fire up the Terminal before proceeding):

rfkill's_ list_ command lets you see all the available devices, if you don't find any of your devices, make sure you have turned the hardware switch ON and have installed the drivers for each. Here is what I get on my system after enabling the hardware switch:

```
kartik@PlatiniumLight ~ $ rfkill list
0: brcmwl-0: Wireless LAN
Soft blocked: yes
Hard blocked: no
1: dell-wifi: Wireless LAN
Soft blocked: yes
Hard blocked: no
2: dell-wwan: Wireless WAN
Soft blocked: yes
Hard blocked: yes
3: hci0: Bluetooth
Soft blocked: no
Hard blocked: no
kartik@PlatiniumLight ~ $
```

Apart from Bluetooth, I usually find all other devices to be in a random state of yes or no. To enable them, issue the _unblock_ command as shown:

```
kartik@PlatiniumLight ~ $ rfkill unblock 0
kartik@PlatiniumLight ~ $ rfkill unblock 1
kartik@PlatiniumLight ~ $ rfkill unblock 2
kartik@PlatiniumLight ~ $ rfkill list
0: brcmwl-0: Wireless LAN
Soft blocked: no
Hard blocked: yes
1: dell-wifi: Wireless LAN
Soft blocked: no
Hard blocked: no
2: dell-wwan: Wireless WAN
Soft blocked: no
Hard blocked: no
3: hci0: Bluetooth
Soft blocked: no
Hard blocked: no
kartik@PlatiniumLight ~ $
```

You can also try using the _unblock all_ command for enabling all the devices together:

```
kartik@PlatiniumLight ~ $ rfkill unblock all
```

Sometimes it happens that even after unblocking once, some device(s) may show up as blocked (see the 0th device above, which shows hard blocked as yes). To correct this just issue the unblock command again for that particular device:

```
kartik@PlatiniumLight ~ $ rfkill unblock 0
kartik@PlatiniumLight ~ $ rfkill list
0: brcmwl-0: Wireless LAN
Soft blocked: no
Hard blocked: no
1: dell-wifi: Wireless LAN
Soft blocked: no
Hard blocked: no
2: dell-wwan: Wireless WAN
Soft blocked: no
Hard blocked: no
3: hci0: Bluetooth
Soft blocked: no
Hard blocked: no
kartik@PlatiniumLight ~ $
```

When you get all the devices unblocked, you will not face any trouble connecting to wi-fi devices around. :-)

**Bonus Tip:** If you have a common hardware switch for wireless radios, you can turn off additional devices like Bluetooth (or vice versa) to save some battery life using the _block_ command of rfkill:

```
kartik@PlatiniumLight ~ $ rfkill block 3
kartik@PlatiniumLight ~ $ rfkill list
0: dell-wifi: Wireless LAN
Soft blocked: no
Hard blocked: no
1: dell-wwan: Wireless WAN
Soft blocked: no
Hard blocked: no
2: brcmwl-0: Wireless LAN
Soft blocked: no
Hard blocked: no
3: hci0: Bluetooth
Soft blocked: yes
Hard blocked: no
kartik@PlatiniumLight ~ $
```

Stay Dignified!  
 - Kartik





Originally published at http://www.digimantra.com/linux/rfkill-enabledisable-wireless-linux-laptop/
