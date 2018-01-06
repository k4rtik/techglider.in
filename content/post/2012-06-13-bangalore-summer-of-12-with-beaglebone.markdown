---
author: kartiksinghal
comments: true
date: 2012-06-13 16:42:13+05:30

slug: bangalore-summer-of-12-with-beaglebone
title: (Bangalore) Summer of '12... with BeagleBone
wordpress_id: 454
categories:
- post
tags:
- Android
- Bangalore
- BeagleBone
- curiosity
- hacker
- Hardware
- hardware hacker
- Informative
- Open Hardware
- programming
- Samsung Galaxy
- travel
---

[![BeagleBone](http://farm7.static.flickr.com/6092/6312266521_975315a837_m.jpg)](http://www.flickr.com/photos/25485153@N00/6312266521)

This post will be slightly long. Lots of exciting things happening over a Bangalore summer this year for me. :D

[Somehow I always wanted to learn more about hardware](http://k4rtik.wordpress.com/2011/01/20/discovered-today-the-only-two-subjects-i/) and with a mentor like [Khasim](http://www.khasim.in/) the road seems a lot more exciting. I first met him when he came to conduct a workshop on [BeagleBoard](http://beagleboard.org/) during [Tathva 2009](/post/2009/11/20/tathva-and-the-seniors-part-1/) at my college - NIT Calicut. I was just a fresher then and have since regretted that I could not attend that workshop completely (due to my participation in various CS related competitions).

Well, life took strange turns and I along with friend [Jerrin](http://jerrinsg.github.com/) landed up in Bangalore and got to hack together on a [BeagleBone](http://beagleboard.org/bone) (a low-cost, high-expansion hardware-hacker focused BeagleBoard). We initially learnt the very basics of working with a board like this using the serial output on [UART](http://en.wikipedia.org/wiki/Universal_asynchronous_receiver/transmitter) console (and discovered that we couldn't proceed further until [R219 was plucked out](http://circuitco.com/support/index.php?title=BeagleBone#Ehternet_unable_to_obtain_a_lease.5BA4_Only.5D), thanks to another mentor Mr. Satish Patel from Khasim's team; fiola on #beagle channel on freenode was a great help in troubleshooting as well), then there was [Starterware](http://processors.wiki.ti.com/index.php/StarterWare) which enabled us to experiment with blinking LEDs and other small programs for Bone.

I then learnt how to read a schematic using [the great book by Barr & Massa](http://www.amazon.com/Programming-Embedded-Systems-Development-Edition/dp/0596009836) which Amarjit Singh suggested (now I will recommend this book, Programming Embedded Systems, as a TO-READ if you want to learn basics of embedded systems programming) and tried to understand the schematics of BeagleBone (rev. A4). I was able to identify how various components on the board connect to the processor and the direction of data flow among them and to understand how simple things like power reset, user LEDs, SDRAM, USB host & connector, microSD and expansion slots interact with the CPU.

Exploration of the design specifications of the board with some details about each external peripheral present on the board from the BeagleBone System Reference Manual followed. I even tried to read ARM335x datasheet and Technical Reference Manual to extract useful information (like memory locations of on-chip peripherals, handling of interrupts at CPU level, etc.) - datasheets are HUGE documents! Using this data, referring the book by Barr & Massa and taking help from Starterware example programs I was able to write my (own) code from scratch for blinking an LED on BeagleBone as a pure learning exercise - believe me it was total fun (no matter however it may sound in this post)!

Just today, I got my hands on [Microchip's Accessory Development Starter Kit for Android](http://www.microchip.com/stellent/idcplg?IdcService=SS_GET_PAGE&nodeId=1406&dDocName=en553673) (pictured below). I will be using this to understand the ins and outs of [Android's Open Accessory Protocol](http://developer.android.com/guide/topics/usb/adk.html) and try to port the firmware on BeagleBone such that it could be used as an ADK platform as well. Lots of learning, fiddling with USB APIs, Android hacking, and of course embedded C programming to follow next (and I am up for the game!).

<!--Here are some pics of the awesome things I am playing with these days (click on image for larger view):

[gallery columns="2"]-->

I will try to regularly post about my progress here and yes, there is a lot more I have to say about this Bangalore Summer, but some other post, some other time. :)

Ciao

k4rtik
