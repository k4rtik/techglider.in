---
author: kartiksinghal
comments: true
date: 2012-07-13 18:30:17+05:30

slug: best-tool-for-downloading-youtube-videos-and-playlists
title: Best Tool for Downloading YouTube Videos and Playlists
wordpress_id: 435
categories:
- post
tags:
- commands
- gnu/linux
- Informative
- Linux
- terminal
- tools
- ubuntu
- YouTube
---

How many times does it happen that you stumble upon an awesome youtube video, you make up your mind to download it but fail short to find a good tool which actually works?

In this post I want to introduce one of the best tools for downloading videos from [YouTube](http://www.youtube.com/) and other video platforms - [youtube-dl](http://rg3.github.com/youtube-dl/). This command line tool is basically just a python script released by its developers in public domain and it works on any platform that supports Python 2.x or later including Linux, Windows or Mac OS X.

If you are on Ubuntu, you can directly install it by using:

```bash
k4rtik: $ sudo apt-get install youtube-dl
```

If not, just go to [youtube-dl download page](http://rg3.github.com/youtube-dl/download.html) and save the script in your home directory. Then make the script executable by using the following command:

```bash
k4rtik: $ chmod +x youtube-dl
```

You can also consider moving the script to your /usr/local/bin directory to invoke it directly without specifying the path:

```bash
k4rtik: $ sudo mv youtube-dl /usr/local/bin
```

In its most basic form you can use this tool to download the highest quality of video by just supplying the url of the video as its argument, e.g.:

```bash
k4rtik: Videos $ youtube-dl http://www.youtube.com/watch?v=Rk62hRBDLGc
[youtube] Setting language
[youtube] Rk62hRBDLGc: Downloading video webpage
[youtube] Rk62hRBDLGc: Downloading video info webpage
[youtube] Rk62hRBDLGc: Extracting video information
[download] Destination: Rk62hRBDLGc.flv
[download] 100.0% of 5.38M at 88.81k/s ETA 00:00
k4rtik: Videos $
```

My preferred way of downloading videos is by using the -t flag, which saves the video with the title in the file name, e.g.:

```bash
k4rtik: Videos $ youtube-dl -t http://www.youtube.com/watch?v=Rk62hRBDLGc
[youtube] Setting language
[youtube] Rk62hRBDLGc: Downloading video webpage
[youtube] Rk62hRBDLGc: Downloading video info webpage
[youtube] Rk62hRBDLGc: Extracting video information
[download] Destination: Reasons_to_love_Ubuntu_12_04_LTS-Rk62hRBDLGc.flv
[download] 100.0% of 5.38M at 204.52k/s ETA 00:00
k4rtik: Videos $
```

In case, you don't want to download the highest quality to save some bandwidth and time, youtube-dl offers choice of multiple formats. See its man-page to find out more, I prefer H264 videos at 480p size for youtube which I specify like this:

```bash
k4rtik: Videos $ youtube-dl -t -f 18 www.youtube.com/watch?v=02nBaaIoFWU
[youtube] Setting language
[youtube] 02nBaaIoFWU: Downloading video webpage
[youtube] 02nBaaIoFWU: Downloading video info webpage
[youtube] 02nBaaIoFWU: Extracting video information
[download] Multipath_TCP-02nBaaIoFWU.mp4 has already been downloaded
k4rtik: Videos $
```

You can also use it for downloading complete playlists off youtube:

```bash
k4rtik: Videos $ youtube-dl -f 18 -t http://www.youtube.com/watch?v=128ll4yXUfY&list=PL2E1848DB88958935
```

Oh, and did I mention... it continues the download if interrupted due to network trouble or some other reason, just specify the same command again.

According to its man page it supports video downloads from other popular video hosting sites like Facebook, Metacafe, Vimeo, Yahoo!, YouTube, blip.tv, video.google.com and many more. Hope you enjoy using it for all your video downloading needs.

Ciao

K4rtik

_This article first appeared at [http://www.digimantra.com/tutorials/best-tool-for-downloading-youtube-videos-and-playlists/](http://www.digimantra.com/tutorials/best-tool-for-downloading-youtube-videos-and-playlists/)_
