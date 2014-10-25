---
author: kartiksinghal
comments: true
date: 2011-02-01 01:20:47+00:00
layout: post
slug: accessing-nit-calicuts-ubuntu-mirror-in-the-campus
title: Accessing NIT Calicut's Ubuntu Mirror (in the campus)
wordpress_id: 90
categories:
- post
tags:
- commands
- FOSSCell
- Informative
- NIT Calicut
- terminal
- ubuntu
---

As the FOSSCell webserver has been facing troubles these days, the instructions to use the Ubuntu Mirror of NIT Calicut that were available on the FOSSCell wiki are being missed by many. Here they are though not in the informative way as were given on the wiki:

Add the following to your /etc/apt/sources.list and comment out other similar repos.

`
deb http://192.168.40.97/ubuntu lucid-updates main multiverse restricted universe
deb http://192.168.40.97/ubuntu lucid-security main multiverse restricted universe
deb http://192.168.40.97/ubuntu lucid main multiverse restricted universe
`

Then update the repo database using:
`sudo apt-get update`
