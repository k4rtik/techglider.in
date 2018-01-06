---
author: kartiksinghal
comments: true
date: 2011-06-25 18:30:44+05:30

slug: restore-grub-in-ubuntu-after-installing-windows
title: Restore GRUB in Ubuntu after installing Windows
wordpress_id: 273
tags:
- boot
- commands
- Disk partitioning
- gnu/linux
- Informative
- Linux
- Microsoft Windows
- Mount (Unix)
- Sudo
- terminal
- ubuntu
- Windows
---

So, you had [Ubuntu](http://www.ubuntu.com/) (or any of its derivative) installed on your system and then decided to install [Windows](http://en.wikipedia.org/wiki/Microsoft_Windows) with it? And after installing Windows, you can't load Ubuntu again, just follow the steps to get this working:



	
  1. Boot the system using a Ubuntu Live disk.

	
  2. After you reach the desktop, open Terminal (press Alt+F2, type "gnome-terminal" without quotes and press enter).

	
  3. Execute:

    ```
    sudo fdisk -l
    ```

	
  4. Execute (after replacing _sda7_ with your corresponding linux root [partition](http://en.wikipedia.org/wiki/Disk_partitioning), which you will be able to identify from the output of the previous command - it's usually marked as [Linux](http://en.wikipedia.org/wiki/Linux)):

    ```
    sudo mount /dev/sda7 /mnt
    ```

	
  5. Just check whether you got the root partition right, if you have more than 1 linux partition on your hard disk:

    ```
    cd /mnt
    ls
    ```
  If the listing contains names like bin, boot, dev, etc, home, tmp, usr, var, et cetera then you are in the right partition. If not, unmount this using:
    ```
    sudo umount /mnt
    ```
  and follow the above step again using another partition.

	
  6. Now:

    ```
    sudo grub-install --root-directory=/mnt /dev/sda
    ```
and grub will get installed if it shows no errors.

	
  7. As a last step unmount your /mnt directory using:

    ```
    sudo umount /mnt
    ```
and restart the system. You will find the friendly grub [boot manager](http://en.wikipedia.org/wiki/Booting) giving you the choice to boot into Linux or Windows.


_An edited version of this post first appeared at http://www.digimantra.com/linux/restore-grub-in-ubuntu-after-installing-windows/_




--
Kartik - The TechGlider Guy
[http://www.techglider.in](http://www.techglider.in/)
