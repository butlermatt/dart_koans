Dart Koans
==========

This application is inspired by Ruby Koans. The idea is simple:
You acheive enlightenment though a process of failures. As each
failure is overcome you get one step closer to enlightenment.

In practice, the _Dart Koans_ allow you to learn Dart through a
much more hands on approach. Each test is accompanied by enough
comments surrounding the code that an individual should be able
to determine what the code is trying to accomplish and what 
values need to be provided to the default fill-in value.

Installation
------------

In order to properly complete the koans, you will need to edit
the files, as well as run the script. As such it is recommended
that you download the .zip file and extract it to a local
directory. Once downloaded to a local directory, you may need
to run ```pub install``` in the directory to copy over the
required sdk files. **Do Not** use *pub* to download and install
the Koans to another project, as it will place the source files
in the pub-cache and more difficult location for editing properly.

Usage
-----

First you must make sure you have, at the least, the Dart VM
installed on your computer and working. If you're unsure about
this process please see the 
[Dart download](http://www.dartlang.org/downloads.html).
From the command line use the dartVM to run the file:

    dart bin/dart_koans.dart

You should receive an error letting you know where your path to
enlightenment is currently blocked. From there, edit the file
either with your favorite CLI editor, or with the Dart Editor.

Modify the file to correct the error, save and run the 
application again. Continue until enlightenment is achieved.

At current time, it is recommended that you run the application
from the command line, and not from the Dart Editor. This is
until one of two bugs are resolved: [Issue 4654](http://dartbug.com/4654)
and [Issue 2789](http://dartbug.com/2789)

Notice
------

This is currently still very unstable and a work in progress.
There are numerous areas which are subject to change as
development progresses. 

