---
author: kartiksinghal
comments: true
date: 2013-02-06 15:55:08+00:00
layout: post
slug: quickly-check-temperature-values-of-hardware-components-in-ubuntu
title: Quickly Check Temperature Values of Hardware Components in Ubuntu
wordpress_id: 427
categories:
- post
tags:
- commands
- dell
- gnu/linux
- Hardware
- laptop
- Linux
- Operating system
- terminal
- ubuntu
- xps
---

_So, I missed [posting](http://k4rtik.wordpress.com/2013/02/01/28-days-challenge/) yesterday. Hope this doesn't repeat._

Today I am sharing a small bash script I wrote to check the temperatures recorded by various sensors in my laptop. Nothing incredibly smart here, just a quick but useful hack.

I am one of those unhappy Linux users who suffer from lack of driver support for their hardware. Due to some weird kernel bug or messy graphics driver, which led to incredibly high temperatures on my laptop,  I spent about a year using Linux as a VirtualBox guest in Windows; this was before Ubuntu 12.04 got shipped. During those times, my laptop used to shutdown automatically after reaching critical temperatures (100° C!) on simple tasks like watching a HD video on VLC.

What all do we need? In *buntu systems, install _sensors_ and _hddtemp_ tools. I am using an ATi Radeon card and proprietary driver ships with a utility for reporting temperature for the same. You can modify the script to work with nVidia cards accordingly.

    
    sudo apt-get install lm-sensors hddtemp


Next, you need to run sensors-detect to let _sensors _identify all the hardware monitoring sensors present in your system.

    
    sudo sensors-detect


Press enter to accept default options when asked.

Here is the script; _hddtemp_ requires _sudo_ making this script more than 3 lines:

<script src="https://gist.github.com/k4rtik/2518975.js"></script>

I have put this script in my local bin folder for quick access. To do the same, follow the steps:

mkdir ~/bin

Put this directory in your path by putting the following line at the end of your .bashrc file (replace k4rtik by your username)

export PATH=$PATH:/home/k4rtik/bin

mv temp.sh ~/bin/temp

chmod +x temp

Now either logout and login or issue the following command to be able to access the script by just entering _temp_ on your terminal.

    
    source ~/.bashrc


Here is a sample run from my machine:

    
    k4rtik: ~ $ temp
    acpitz-virtual-0
    Adapter: Virtual device
    temp1:        +26.8°C  (crit = +127.0°C)
    temp2:        +70.0°C  (crit = +85.0°C)
    
    coretemp-isa-0000
    Adapter: ISA adapter
    Core 0:       +70.0°C  (high = +84.0°C, crit = +100.0°C)
    Core 1:       +70.0°C  (high = +84.0°C, crit = +100.0°C)
    Core 2:       +70.0°C  (high = +84.0°C, crit = +100.0°C)
    Core 3:       +70.0°C  (high = +84.0°C, crit = +100.0°C)
    
    Default Adapter - ATI Mobility Radeon HD 4670
                      Sensor 0: Temperature - 74.50 C
    
    Do you want to know hard disk temperature (requires sudo)? (y/N) y
    [sudo] password for k4rtik: 
    /dev/sda: ST9500420ASG: 51°C


PS: Didn't know earlier - embedding Github gists into WordPress is as easy as copy & pasting the URL. :-)
