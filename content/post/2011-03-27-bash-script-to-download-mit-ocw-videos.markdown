---
author: admin
comments: true
date: 2011-03-27 08:28:01+05:30

slug: bash-script-to-download-mit-ocw-videos
title: Bash Script to Download MIT OCW Videos
wordpress_id: 393
categories:
- Linux
- On the Web
- TGF
tags:
- college
- forums
- Linux
- NIT Calicut
---

Some months back in November, I had used many variants of the following script to automate the download of MIT OCW videos:

```bash
#!/bin/bash
baseurl="http://www.archive.org/download/MIT_Structure_of_Computer_Programs_1986/lec"
urlend="b_512kb.mp4"
log="log_b"
for i in {1..7}
do
nohup wget -c "${baseurl}$i${urlend}" > "${log}$i" &
done
```
It doesn't really do much, just put the baseurl and urlend properly which should be common for similar links and run a for loop.

Sharing so that it may come handy to some others in similar needs. :)


--  
Kartik - The TechGlider Guy  
[http://www.techglider.in](http://www.techglider.in/)
