---
author: kartiksinghal
comments: true
date: 2011-02-10 10:18:08+00:00
layout: post
slug: inputoutput-using-text-files-without-diving-into-file-handling
title: Input/Output using Text Files Without Diving into File Handling
wordpress_id: 91
categories:
- post
tags:
- commands
- gnu/linux
- Informative
- programming
- terminal
---

It's quite easy to use text files as input source or to redirect the output of programs to files if you happen to do programming on a unix/linux terminal.

Let's take an example of a usual random number generator:
```c
// random.c
#include <stdio.h>
#include <stdlib.h>
int main ()
{
        int i, count=99999999;
        for (i = 0; i < count; i += 1)
                printf("%d\n", (int)random());

        return 0;
}
```

Let's generate an executable by the name `random.out` for this program:
```bash
$ gcc random.c -o random.out
```

Then, to redirect it's output we can use output redirection offered by the bash shell (_tip_: reduce the value of count in the code above if you don't want to generate a 1 GiB file and waste both time and disk space):
```bash
$ ./random.out > randout.txt
```

The > (greater than symbol) redirects the standard output to the file named `randout.txt`.

To use a file as input source, the < (less than symbol) is used, e.g.:
```bash
$ ./quicksort.out < randout.txt
```

You can also combine both redirections:
```bash
$ ./quicksort.out < randout.txt > sortedfile.txt
```

Another nifty concept is pipelining (or piping), which can be used to redirect output from a program as input of another, for example, to generate random numbers on fly and feed them to my quicksort program I can do:
```bash
$ ./random.out | ./quicksort.out > sortedfile.txt
```

In the above, input source files is not specified as required number of inputs are taken directly from random program. | (vertical pipeline symbol) enables this functionality.

The program which you create for using these text files should just be able to receive the input and return the output separated by newline characters. Using a for loop for taking definite number of inputs is preferred.

_See also_: [Redirection on Wikipedia](http://en.wikipedia.org/wiki/Redirection_%28computing%29)

Don't hesitate to leave a comment if this post helped you.

**EDIT (2011-02-24):** Got into trouble while using this method for taking input in my DSA lab last week. Apparently this works only if the for loop for taking input does just that - input iteratively in an array - and nothing else. While calling insert function in a binary search tree implementation along with the scanf inside the input loop lead to weird input to the program. File handling seems to be the only solution in this situation. Though if you find any explanation for this behavior of bash shell, please do share in the comments.
