---
date: 2015-07-14T16:58:36+05:30
tags:
- informative
- hacker
- howto
- programming
- Android
- hardware
- operating system
title: Controlling iTunes using Android Wear
---

I happen to be surrounded by a lot of gadgets lately. One of them is a pretty
Moto 360, one of the early Android Wear watches:

<blockquote class="instagram-media" data-instgrm-captioned data-instgrm-version="7" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"> <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:50% 0; text-align:center; width:100%;"> <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;"></div></div> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/z9uMbPLQcJ/" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank">In all its glory. #androidwear #moto360 Thanks a zillion @todoist</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">A photo posted by Kartik Singhal (@k4rtik) on <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2015-03-08T11:05:27+00:00">Mar 8, 2015 at 4:05am PDT</time></p></div></blockquote> <script async defer src="//platform.instagram.com/en_US/embeds.js"></script>

and another a MacBook Air (*PlatiniumAir*) which is about to celebrate its first
anniversary:

<blockquote class="instagram-media" data-instgrm-captioned data-instgrm-version="7" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"> <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:50% 0; text-align:center; width:100%;"> <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;"></div></div> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/rQjtFWLQTN/" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank">Let there be light!</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">A photo posted by Kartik Singhal (@k4rtik) on <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2014-08-04T01:56:48+00:00">Aug 3, 2014 at 6:56pm PDT</time></p></div></blockquote>
<script async defer src="//platform.instagram.com/en_US/embeds.js"></script>

This morning while walking-reading in my room, I had iTunes on the MacBook
playing some tracks from one of the auto-generated Apple Music playlists. Now,
it’s fairly easy to flick away mobile (lying away on my desk) notifications
using my watch and not interrupt my reading for more than a couple seconds. But
it was annoying to go back to my desk, login to the machine and skip a track
when I did not like the one that played automatically. I wondered, if the watch
could interface with my MacBook somehow and I could achieve what I wanted.

I first tried adding the MacBook as a bluetooth device to the watch, but that
didn’t seem to help.

A couple Google searches later I found an Android app called [Mac Remote for
Wear](https://play.google.com/store/apps/details?id=be.hcpl.android.bubble)
which seemed promising. It’s a no frills app which requires you to enable remote
logging into your machine, supply the username, password and local IP address of
your machine and configure any app like iTunes, VLC, etc. using
[AppleScript](https://en.wikipedia.org/wiki/AppleScript). Once that is done, it
appears similar to following screen on your Android Wear device:

![My watch has a round dial, but looks like the screenshots are captured in square shape. :-)](/images/itunes-wear.png "My watch has a round dial, but looks like the screenshots are captured in square shape. (-:")

What prompted me to write this post, however, was not this app, but finally
spending some time with AppleScript and learning of its power.

Turns out it’s easy to play with AppleScript using a terminal, try the following
one liner, for example:

    $ osascript -e ‘tell application “iTunes” to playpause’

[Script Editor](https://en.wikipedia.org/wiki/AppleScript_Editor), an
application shipped by default on OS X, provides complete reference
(*dictionary* in AppleScript parlance) for each installed application’s API. It
was a matter of few minutes to figure out how to make those buttons play well
with iTunes:

![Adding iTunes app in Mac Remote for Wear app: Before](/images/remote-before.png "Adding iTunes app in Mac Remote for Wear app: Before")

![Adding iTunes app in Mac Remote for Wear app: After](/images/remote-after.png "Adding iTunes app in Mac Remote for Wear app: After")

(I could not get name of current track to appear and made do with mapping the ? button with Stop action)

I had read about AppleScript being used for automation on OS X, but had never
bothered to give it a try in my almost one year’s experience with the Mac world.
This simple use case today served as my first introduction to AS. Hope to
automate a lot more things in future on OS X.

_Originally [posted at Medium](https://medium.com/the-techglider/controlling-itunes-using-android-wear-9602a0b5f1eb)_
