---
author: kartiksinghal
comments: true
date: 2011-10-06 07:19:04+05:30
layout: post
slug: build-eiskaltdc-on-fedora-16-lovelock-64-bit
title: Build EiskaltDC++ on Fedora 15 Lovelock 64-bit
wordpress_id: 353
categories:
- post
tags:
- fedora
- Git
- gnome
- Linux distribution
- Source code
---

[EiskaltDC++](http://code.google.com/p/eiskaltdc/) is a cross-platform program that uses the Direct Connect and ADC protocol. The direct connect client LinuxDC++ available in rpmfusion repos doesn't yet support ADC protocol and hence doesn't work with the DC++ Hub that has been setup in our hostel. I had to compile Eiskalt from the sources. Posting here the steps I had to follow for a rather painful build.

I am using [Fedora](http://www.fedoraproject.org/) 15 64-bit with [GNOME 3](http://www.gnome.org/) desktop.

First install the dependency packages, I had to install all these devel packages for my system, YMMY, see below:

```bash
sudo yum install cmake bzip2-devel xlib-devel zlib-devel openssl-devel qt-devel qmake boost-devel libupnp-devel aspell-devel libidn-devel lua-devel
```

cd to a desired directory where you keep your sources. Then,

```bash
git clone git://github.com/negativ/eiskaltdcpp.git #Clone the latest source from the official git repo
cd eiskaltdcpp/
gedit INSTALL & #Keep the INSTALL file handy, it lists all the dependencies required for the build
mkdir builddir
cd builddir/
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr -DUSE_QT=ON -DUSE_ASPELL=ON -DFREE_SPACE_BAR_C=ON&nbsp; -DCREATE_MO=ON -DLUA_SCRIPT=ON -DWITH_SOUNDS=ON -DWITH_LUASCRIPTS=ON -DUSE_MINIUPNP=ON -DLOCAL_MINIUPNP=ON ../
```

If you get an error in the above step, check which dependency is missing and install it using yum

```bash
make -j9 #replace 9 with the number of cores in your CPU plus one. For my Core i7 CPU with 8 cores, it's 9
sudo make install
```

You can try running it by typing eiskaltdcpp-qt on the terminal. If it gives an error about libeiskaltdcpp.so.2.2 missing, just execute the following command:

```bash
sudo cp /usr/lib/libeiskaltdcpp.so.2.2 /usr/lib64/ -v
```

Now you can run Eiskalt without any problems. :)
