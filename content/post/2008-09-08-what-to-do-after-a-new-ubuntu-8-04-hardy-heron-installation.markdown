---
author: admin
comments: true
date: 2008-09-08 10:52:09+05:30

slug: what-to-do-after-a-new-ubuntu-8-04-hardy-heron-installation
title: What to do after a new Ubuntu 8.04 Hardy Heron installation?
wordpress_id: 355
categories:
- Linux
- On the Web
- TGF
tags:
- forums
- Linux
- open source
- ubuntu
---




## After Install Tasks
	
  1. Have  your internet connection ready. If you have ADSL (BSNL, Airtel broadband) connection, and you are used connecting using a username and  password in windows, then, open up a Terminal  (Applications->Accessories) and give the following command:  
  
    ```
    sudo pppoeconf
    ```
  You  will prompted for your password. Then a wizard runs and detects your  connection (usually eth0). Accept all the default settings and when  prompted type your connection username and password.

    You will need to give the following commands for connecting and disconnecting:  

    ```
    pon dsl-provider //this one for connecting
    poff -a //for disconnecting
    plog //for seeing the status of your connection
    ```

	
  2. Stop  unnecessary services. Go to System->Administration->Services and  de-select bluetooth service if you don't want to use bluetooth with your  PC.

	
  3. Stop unnecessary startup programs. Go to  System->Preferences->Sessions and de-select bluetooth-manager if  you don't want to use it.

	
  4. Uninstall software that you won't use.  Go to Applications->Add/Remove... and have a look at the software  installed in your system and deselect as required. In my case, I  uninstalled ekiga, transmission, games, audio cd extractor and f-spot  photo manager.

	
  5. Now, update your system. Normally, the updates  that will show up when you run Ubuntu for first time are old so consider  clicking on "Check" in System->Administration->Update Manager to  get info about all of the updates and install them by clicking on  'Install Updates'.

	
  6. If you want to install additional software on your system, follow the steps:

	
    * First of all, enable the medibuntu repositories:

	
      * import the registry:  

        ```
        sudo wget http://www.medibuntu.org/sources.list.d/hardy.list -O /etc/apt/sources.list.d/medibuntu.list
        ```

	
      * import the gpg-key and update your package-list


        ```
        sudo apt-get update && sudo apt-get install medibuntu-keyring && sudo apt-get update
        ```




	
    * Now  you are able to install most of the common software by using the  Synaptic Package Manager (in System->Administration), searching for  the package in synaptic and installing it.

	
    * You can also install software in Ubuntu by using the following command:  
    
        ```
        sudo apt-get install
        ```

	
    * You can also remove software using the following command:  
    
        ```
        sudo apt-get remove
        ```
e.g.  

        ```
        sudo apt-get remove brasero
        ```




	
  7. Recommended software (just replace <package-name> with these names to install or use synaptic):

	
    * Microsoft's TrueType Core Fonts: msttcorefonts (e.g. sudo apt-get install msttcorefonts)

	
    * Win Codecs: w32codecs, libdvdcss2 (another e.g. sudo apt-get install w32codecs libdvdcss2)

	
    * Adobe Reader: acroread, acroread-plugins, mozilla-acroread

	
    * Adobe Flash Player: flashplugin-nonfree

	
    * Sun's Java JRE: sun-java6-jre, sun-java6-plugin

	
    * ntfs-config (for configuring removable NTFS drives for writing/reading)

	
    * vlc (the ultimate video player)

	
    * unrar (for unzipping rar archives)

	
    * Network Traffic Applet: netspeed (nice widget to monitor network speeds)

	
    * wine (Windows emulator, can run many of your windows apps on linux)

	
    * filezilla filezilla-locales (good FTP client)

	
    * gparted (software for all your partitioning needs)

	
    * skype (you must have heard about it)

	
    * audacity (an audio editor)

	
    * gtkpod (iPod manager)

	
    * k3b (first remove brasero using synaptic): k3b, libk3b2-extracodecs, normalize-audio, transcode, sox, vcdimager (a CD/DVD burner and alternative for Nero on linux)





In case you face any problems, post here. :)




--  
Kartik - The TechGlider Guy  
[http://www.techglider.in](http://www.techglider.in/)
