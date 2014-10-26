---
author: admin
comments: true
date: 2010-05-28 02:16:52+05:30
layout: post
slug: delaying-product-activation-in-windows-7
title: Delaying Product Activation in Windows 7
wordpress_id: 371
categories:
- TGF
tags:
- forums
- windows
---

We all know that we can use Windows 7 without  entering a product key for 30 days. But do you know that the grace  period until activation can be extended to a maximum of 150 days?

There  is a way to do this and note that you should use this method when you  have 2-3 days remaining for product activation as this method can work  for a maximum of 4 times (30 days + 4 X 30 days  = 150 days).

Here you go:



	
  1. Open the Start menu, select Search, and type cmd.

	
  2. Right-click  the cmd shortcut that appears and choose Run as Administrator from the  pop-up menu that appears. Windows 7’s command-line window appears.

	
  3. Type the following text in the command-line window and press Enter when complete:


    `slmgr.vbs -rearm`

When  the command is run successfully, the Windows Script Host window  appears, noting “Command completed successfully. Please restart the  system for the changes to take effect.”

	
  4. Click OK to close the  Windows Script Host window and then restart the PC. When you reboot,  reload the System window. The grace period has been reset to 30 days.


_Source: Windows 7 Secrets_


--  
Kartik - The TechGlider Guy  
[http://www.techglider.in](http://www.techglider.in/)
