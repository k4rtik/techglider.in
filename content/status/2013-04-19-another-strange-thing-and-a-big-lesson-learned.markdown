---
author: kartiksinghal
comments: true
date: 2013-04-19 14:55:02+00:00
layout: post
slug: another-strange-thing-and-a-big-lesson-learned
title: Another strange thing and a big lesson learned...
wordpress_id: 590
post_format:
- Status
tags:
- curiosity
- Disk partitioning
- Linux
- Operating system
---

Another strange thing and a big lesson learned today was regarding disk handling by Windows and Linux. I had been observing missing files from my hard disk for a few weeks now, always suspected it was due to bad sectors but tests didn't turn up anything positive. When I took the backup of my old Ubuntu home directory to an NTFS partition, installed Linux Mint and then tried to access the backup I was left with a shock - the whole backup was gone!

I investigated a bit and found the possible reason at http://askubuntu.com/a/120540/112542 and quickly recalled that indeed I had booted up Windows after taking the backup. I felt idiotic not knowing this simple fact before that Windows, when booting to a hibernated system, considers any file system change as data corruption and fixes it. In my case, it was deleting all those files, I thought I was saving for opening in Windows. I immediately turned off the default behaviour of Windows which is to hibernate instead of shutdown, so that now no hiber file is generated. I am left wondering how could such a harmful behavior be default!

Well, huge lesson learned. And I have no idea apart from my home directory backup how much more data I lost all this time.
