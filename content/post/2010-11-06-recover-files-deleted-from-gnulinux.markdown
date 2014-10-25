---
author: kartiksinghal
comments: true
date: 2010-11-06 15:43:00+00:00
layout: post
slug: recover-files-deleted-from-gnulinux
title: Recover files deleted from GNU/Linux
wordpress_id: 5
categories:
- post
tags:
- commands
- FOSS
- gnu/linux
- Informative
- terminal
- ubuntu
---

   

It was an embarassing today that after making a presentation on Drupal and promising the audience to distribute the presentation file after the session, I deleted it accidentally.




And all my fears regarding Linux being so different when it came to file recovery (unlike Windows, where you had a choice of many recovery software) and it was next to impossible to undelete files from linux,  seemed to come true. A quick search in Ubuntu Software Center listed a software called 'recover' which was meant only for ext2 partitions, and mine being ext4 I was hopeless.




As a preventive measure I quickly switched off my system, so as not to overwrite the deleted files due to activity of background services. In situations like these, an Ubuntu bootable USB drive always comes in handy. I created one and booted my system from it. After some Googling I discovered **extundelete: An ext3 and ext4 file undeletion utility** ([http://extundelete.sourceforge.net/)](http://extundelete.sourceforge.net/)). The homepage has a good amount of documentation available which I skimmed mostly. I download the source package.




For compiling extundelete on Ubuntu, the following commands were useful:


[sourcecode language="bash"]
sudo apt-get install e2fsprogs e2fslibs e2fslibs-dev g++
tar xvf extundelete-0.2.0.tar.bz2
cd extundelete
./configure
make
[/sourcecode]



Then I mounted a windows partition just by clicking on it's name in Nautilus file explorer. The ext4 partition with my deleted files was sda12. I change the directory to my windows partition, and issued these commands:






  * `sudo ./src/extundelete /dev/sda12 --restore-all`




This created a directory called "RECOVERED_FILES" which contained many undeleted files. To my relief the drupal directory was there inside among the contents of that folder, though its contents seemed less to me. Indeed, extundelete had recovered only a few files not all, but thankfully the pdf version of my presentation was there. Though I miss having the source odp file (I had spent around 2 hours making the presentation), but then I think extundelete came to a great rescue in my situation of losing the promised file.




PS: The resurrected presentation: [http://fosscell.nitc.ac.in/wiki/index.php/File:Get-started-with-drupal.pdf](http://fosscell.nitc.ac.in/wiki/index.php/File:Get-started-with-drupal.pdf)





  
