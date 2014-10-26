---
author: kartiksinghal
comments: true
date: 2010-10-25 09:46:00+05:30
layout: post
slug: first-hands-on-with-assembly-language-programming
title: First Hands-on with Assembly Language Programming
wordpress_id: 6
categories:
- post
tags:
- commands
- Informative
- NIT Calicut
- programming
- terminal
- ubuntu
---

   

I always wanted to learn assembly language programming. I had never tried do it myself and was disappointed to know that it was not there in our Logic Design course this semester (this because it was mentioned in the syllabus and I had taken pains to find good books on assembly from the library and get them issued, just to return them after learning that the syllabus for the course was too less compared to what was given on the department's website).




But today Murali Sir gave a lecture on Compilation of Expressions in Program Design course, which somehow, to my astonishment, reached assembly language programming. I was delighted. In the class, a simple input n, input n integers and print their sum program was done which was enough to demonstrate most of the features of the instruction set of the _Simple Integer Machine_ we were following.




As soon as the classes were over, I read the [Description of the Target Machine (SIM)](http://athena.nitc.ac.in/%7Ekmurali/Compiler/sim.html) and [downloaded the simulator](http://athena.nitc.ac.in/%7Ekmurali/Compiler/sim-2.tar). The tar file seemed to contain some source files and I had no idea what to do with them. Then, thankfully, I found a makefile among the files. The next steps seemed clear to me. Here are the steps I followed to run my first assembly code:




Please note, I am using an Ubuntu 10.04 32-bit machine.






  * As a first step to compile the simulator, I installed build-essential, bison and flex packages using apt-get. 


  * It gave some crude warnings but an executable named sim was generated.


  * Then after trying out some simple commands, I wrote the full fledged program we did in class earlier today. Here's the code:
```
START  
IN R0  
MOV R1, 0  
L1: JZ R0, L2  
IN R3  
ADD R1, R3  
DCR R0  
JMP L1  
L2: OUT R1  
HALT
```


  * I saved this file as `first.asm`


  * Then the only step remaining was running the code, for which I did a `./sim first.asm`




And I am a proud assembly programming newbie now.




Resources:






  * [Compiler Design Lab Page by Murali Sir on Athena](http://athena.nitc.ac.in/%7Ekmurali/Compiler/index.html)


  * [Murali Sir's homepage on Athena](http://athena.nitc.ac.in/%7Ekmurali/)


  
