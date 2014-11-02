---
author: kartiksinghal
comments: true
date: 2011-06-23 18:30:18+05:30
layout: post
slug: recommended-linux-partitioning-scheme
title: Recommended Linux Partitioning Scheme
wordpress_id: 256
tags:
- Disk Management
- Disk partitioning
- GParted
- Hard disk drive
- Home directory
- Linux
- NTFS
- Operating system
- ubuntu
---

## Partitioning Basics:


When we need to install linux on our systems, we need to [partition](http://en.wikipedia.org/wiki/Disk_partitioning) our [hard disk](http://en.wikipedia.org/wiki/Hard_disk_drive) as we do for windows. In the case of windows, partitions are called as c: ,d:, e:, etc. But on linux they are represented in the form of following (there are many others, but these are the most essential):



	
  1. **swap**:
This is meant for use by the system when it runs out of memory ([RAM](http://en.wikipedia.org/wiki/Random-access_memory)); it's much like [virtual memory](http://en.wikipedia.org/wiki/Virtual_memory) in windows where the system utilizes that space as extra memory.

	
  2. **/**:
This is called the root partition; the most important partition, where all the system files are stored.

	
  3. **[/home](http://en.wikipedia.org/wiki/Home_directory)**:
This partition is meant for use by the users of the system to store their files and preferences. Although it can be merged with the **/** partition, but it is advised to have this as different partition so that you can store your files and preferences and reinstall the system (in **/**).


You don't see the partitions as different drives (as in windows) under linux, they are visible as directories inside the root partition (**/**).


## The Scheme:


After a lot of searching and reading on the topic. I have decided on the following scheme to be very suitable for most (home desktop) purposes:



	
  * **swap** - 1.5 to 2 times the size of RAM (e.g. I have 1.5 GB RAM so my swap is 3GB)

	
  * **/** - 5 to 10 GB (5 GB is sufficient in most cases, but if you have large harddisk, like me, allocate at least 10 for /)

	
  * **/home** – Greater than 10 GB or rest of the space (because this is where you will save all your work and downloads, etc; 40 GB in my case). And yes, you can leave other space on your hard disk as a storehouse for games, videos, music or files in the form of [NTFS](http://en.wikipedia.org/wiki/NTFS) partitions, if you happen to use windows also (else make more room for /home).


Remember: _things are not that complex, we make them complex_. So, stick to a simple partition scheme like this and keep things simple.

[![Gparted showing my hard disk partition structure](http://k4rtik.files.wordpress.com/2011/06/screenshot-dev-sda-gparted.png)](http://k4rtik.files.wordpress.com/2011/06/screenshot-dev-sda-gparted.png)

**Bonus Tip:** Use [Gparted](http://gparted.sourceforge.net) instead of the [partition editor](http://en.wikipedia.org/wiki/Partition_editor) that comes within the installer of most linux installers to have a complete control over your hard disk's partitions.

_This article first appeared at http://www.digimantra.com/linux/recommended-linux-partitioning-scheme/_
