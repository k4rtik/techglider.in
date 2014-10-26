+++
date = "2014-10-26T13:56:13+05:30"
tags = ["init", "writing"]
title = "reinit"

+++
Today I am relaunching my website - http://techglider.in - in a new avatar. This, in the form of techglider.com, used to be my first website on the Internet until the .com domain was stolen by a domain shark. Sometime later, I [switched](/post/2010/12/24/one-last-post-on-my-posterous-2/) to writing on [wordpress.com](http://k4rtik.wordpress.com) and stopped maintaining this site.

A constant feeling of not having an _official_ web home and a permanent place to put my thoughts out for the world has been nagging me for months, this reinit is the first step in solving this problem.

I am using a static website generator called [Hugo](http://gohugo.io) for building this site, it is based on Golang and is probably the second most popular Go project (after Docker). I went through its documentation yesterday and feel it can serve my needs for a long time, given it's not just aimed at blogs but is designed to be able to create complete websites.

Currently, you will find the migrated posts from my wordpress.com blog here. I used [exitwp](https://github.com/thomasf/exitwp) to convert the posts to markdown, but the tool is focused on Jekyll and the metadata generated doesn't match Hugo's directly (yes, Hugo is yet to add support for migration from wordpress). I have gone through the posts and corrected some markup problems, but some work still remains like fixing broken URLs, migrating images and comments, etc. Apart from that, my old self-hosted blog on techglider.in (The Techglider Blog) still needs to be migrated from scratch.

Also, I am yet to settle down with the design of the site and will either customize the current theme - liquorice - or probably take bits and pieces from [spf13's website's design](http://spf13.com) and create my own Hugo theme.

More later.
