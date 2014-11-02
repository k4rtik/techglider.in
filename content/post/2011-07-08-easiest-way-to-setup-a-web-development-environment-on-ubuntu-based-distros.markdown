---
author: kartiksinghal
comments: true
date: 2011-07-08 18:30:21+05:30
layout: post
slug: easiest-way-to-setup-a-web-development-environment-on-ubuntu-based-distros
title: Easiest Way to Setup a Web Development Environment on Ubuntu-based Distros
wordpress_id: 231
tags:
- commands
- drupal
- FOSS
- gnu/linux
- Informative
- Joomla
- LAMP
- Linux
- MySQL
- terminal
- ubuntu
- wordpress
---

Did you know how easy it is to get a basic web development environment on your [Ubuntu](http://www.ubuntu.com/)-based Linux distribution? Guess what, it just takes 2 commands on the Terminal:

```
sudo apt-get install tasksel
```

This will install a small utility which lets you install a lot packages grouped together as software collections.

```
sudo tasksel
```

Launch tasksel and select '[LAMP server](http://en.wikipedia.org/wiki/LAMP_%28software_bundle%29)' by pressing the SPACE key, press ENTER when you are done (see attached screenshot). It will take some time for the required packages to download and install. Near the end of setup, the installer will ask you to create a password for [MySQL](http://www.mysql.com)'s root user.

[![Select LAMP Server among the choices in Tasksel](http://k4rtik.files.wordpress.com/2011/06/screenshot-terminal-lamp-server.png)](http://k4rtik.files.wordpress.com/2011/06/screenshot-terminal-lamp-server.png)

After the installer finishes, you have the environment ready. Head over to your favorite browser and open http://localhost If everything went fine, the page will say **It works!**

[![It works!](http://k4rtik.files.wordpress.com/2011/06/screenshot-localhost-mozilla-firefox.png)](http://k4rtik.files.wordpress.com/2011/06/screenshot-localhost-mozilla-firefox.png)

Now you can start creating websites by putting your html, php, etc. files under /var/www directory or just choose to go with [CMS](http://en.wikipedia.org/wiki/Content_management_system) solutions like [Drupal](http://www.drupal.org), [Wordpress](https://wordpress.org) or [Joomla](http://www.joomla.org/).

The author also recommends to install _phpmyadmin_ package if you happen to work with MySQL databases.

_An edited version of this article first appeared at http://www.muktware.com/articles/08/2011/1348_
