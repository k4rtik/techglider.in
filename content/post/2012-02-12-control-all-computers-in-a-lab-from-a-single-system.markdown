---
author: kartiksinghal
comments: true
date: 2012-02-12 03:10:21+00:00
layout: post
slug: control-all-computers-in-a-lab-from-a-single-system
title: Control All Computers in a Lab from a Single System
wordpress_id: 396
categories:
- post
tags:
- commands
- friends
- gnu/linux
- hacker
- Informative
- innovation
- jugaad
- Linux
- NIT Calicut
- programming
- terminal
- ubuntu
---

Quoting [Dhandeep](http://dhand33p.wordpress.com/), our super-cool lab-admin:


<blockquote>now , all 70 systems in the lab can be switched on and switched off by single commands from the hostel...</blockquote>


Yes, that and a lot more is possible in our [Software Systems Lab](http://athena.nitc.ac.in/ssl/) now. How? Read on...


## The Setup


We have over 70 systems with Ubuntu 10.04 LTS installed on them. There is an administrative account (let's call it admin for this post) and a guest (limited privilege) account on each. Needless to say, admin password is known only to admins and guest password is known to all who use the lab. All these systems are configured to be able to controlled remotely (read: [OpenSSH](http://en.wikipedia.org/wiki/OpenSSH) server is installed on each).


## Basic Idea





	
  1. Log in via [SSH](http://en.wikipedia.org/wiki/Secure_Shell) without a password

	
  2. Write your desired command and run it in background

	
  3. Run the above in a loop for the lab's subnet.




## Detailed Steps


See [Tips for Remote Unix Work (SSH, screen, and VNC)](http://shebang.brandonmintern.com/tips-for-remote-unix-work-ssh-screen-and-vnc) for the **first step** (and for more immensely useful tips on remote usage of *NIX systems).

For **Step 2**, here is one example command:

    
    ssh -t admin@labsystem "echo  | sudo -S shutdown -h now" &


In the above command _labsystem_ is usually replaced with an IP address like 192.168.xxx.xxx and the _<pass>_ with the password of the admin account.

**WARNING**: it's not suggested to use the above command out in the open to save the password from prying eyes; also note that for additional security, you need to take a measure to make sure this is not saved in bash history or if the command is in a script, it's not accessible to others.

The requirement of ampersand at the end depends on particular usage (if you want to run, let's say,  _uptime_ command over ssh, you would not want the output to go to background, or you can redirect the output to some file). Putting the process in background, in this case, will help in the next step.

The -S switch for sudo makes it possible to supply the password via stdin (we had discovered this switch from sudo's man page, but didn't manage to conclude "echo pass |" will do the trick until we discovered it at [StackOverflow](http://stackoverflow.com/questions/233217/pass-password-to-su-sudo-ssh))

**Step 3:** use your favorite scripting language (bash, python, etc.) and run the above command for all the systems of your lab subnet. An example in bash:

[sourcecode language="bash"]
for ip in {101..180}
do
	ssh -t admin@192.168.xxx.$ip "echo  | sudo -S shutdown -h now" &
done
[/sourcecode]

The above code snippet will run the desired command for all systems in subnet within the [IP range](http://en.wikipedia.org/wiki/IP_address) 192.168.xxx.101 to 192.168.xxx.180. Now, you can clearly see how putting the process in the background will help - the next iteration of the loop need not wait for the command in previous iteration to finish!

In the passing, here's a small video I shot featuring Dhandeep when he got all excited to see this working:

[youtube=http://www.youtube.com/watch?v=IbO00lUPNC4]

That's it. Try this out, share your tricks and have some *NIX fun in your lab. :-)

PS: I have not covered how systems can be switched on with this setup. It basically involves broadcasting a [magic packet](http://en.wikipedia.org/wiki/Wake-on-LAN#Magic_packet) to the subnet. <del>Hope Dhandeep comes up with a blog post on that soon. ;-)</del> Here it is: [On the push of a button..](http://dhand33p.wordpress.com/2012/02/11/on-the-push-of-a-button/)

Ciao

Kartik
