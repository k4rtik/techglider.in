---
author: kartiksinghal
comments: true
date: 2011-07-14 16:41:53+05:30

slug: remove-orphaned-actions-in-drupal-7
title: Remove Orphaned Actions in Drupal 7
wordpress_id: 329
categories:
- post
tags:
- commands
- drupal
- Informative
- terminal
---

I recently discovered this weird behaviour by drush when I disabled Comment module in Drupal 7 - drush was giving the following warning whenever I tried enabling/disabling any module:

```
WD actions: 3 orphaned actions (comment_publish_action, comment_save_action, comment_unpublish_action) exist in the actions table. Remove orphaned actions
```

After some scrounging on drupal.org (where most solutions were meant for Drupal 6), I found the solution at http://blog.devkinetic.com/node/9 Just execute the following once:
```
drush php-eval "actions_synchronize(actions_list(), TRUE);"
```
