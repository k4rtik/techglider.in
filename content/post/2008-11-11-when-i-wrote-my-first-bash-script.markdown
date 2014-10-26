---
author: admin
comments: true
date: 2008-11-11 04:32:36+05:30
layout: post
slug: when-i-wrote-my-first-bash-script
title: When I wrote my first bash script...
wordpress_id: 86
categories:
- In Real Life
- Linux
tags:
- bash script
- logo
- my little brother
- turtle
---

Yesterday, I was searching for LOGO (the programming language with a turtle) that works on Ubuntu for I have installed Ubuntu on my little brother's PC and I wanted to show him that he can use Ubuntu for his regular computer study too; he's in 3rd grade and learning LOGO at school.

So, I found one _kturtle_ using _Synaptic Package Manager_ and tried to test it on my own PC. My bad luck, it was like logo but had a different syntax. So, I had to search again and this time I used Google. Someone had already asked for LOGO on linux in some linux community and I got my answer: _ucblogo_. It was there in synaptic too but then I ignored it. Now, I installed it on my PC using synaptic and found out that it was completely terminal based.

I copied the .deb file (that's a debian package for installing software on Ubuntu) onto my brother's PC and installed it. I tried to show him how it was launched using the _gnome-terminal_ and typing the _ucblogo_ command. I felt that was tough for the small guy to remember and he kept on asking me why wasn't there the LOGO icon on the desktop.

I got the idea to write a script that would automatically launch _ucblogo_ in the terminal for him and automatically quit the terminal afterward and to place the script on the desktop. So, here follows the content of the first bash script I wrote in my life:

    
    !# /usr/bin/bash
    ucblogo


I know this is too simple a script to write but I felt a lot happy after writing it because my brother was happy to see his LOGO icon on the Ubuntu desktop. I learnt writing a bash script a lot of months ago and always regretted not being able to put it to good use anywhere in the timebeing. I realized how important and effective it was to apply your knowledge somewhere and make things work.
