---
date: 2015-03-16T15:42:00+05:30
tags:
- automation
- website
- github
- wercker
- hugo
title: Testing Automatic Deployment with Wercker
---

While [reinit](/post/2014/10/26/reinit/)ing this website, I had some [requirements](https://github.com/k4rtik/techglider.in/issues/6) in mind for easy workflow of adding a post.
Yesterday, I spent some time on the awesome tutorial on [Automated deployments with Wercker](http://gohugo.io/tutorials/automated-deployments/) for Hugo [contributed](https://github.com/spf13/hugo/commit/6c5a7b7b6436e2aa99189f60c5aae27d0ff694c3) by [Arjen Schwarz](https://github.com/ArjenSchwarz), which seemed promising.

Apart from a tiny status update, this is a test post I am writing using the familiar GitHub's online editor. Let's see how it goes...

_EDIT: Couple of minutes later:_

It worked!

Now, it's not as fast as pushing the Publish button on my old Wordpress blog as it involves a build stage using Hugo to generate static HTML pages and then the deploy stage to sync them to S3, but then there is all this geekery (and learning) involved that I almost don't mind it. :D
