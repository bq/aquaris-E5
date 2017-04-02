WHAT IS THIS?
=============

Linux Kernel source code for the device bq Aquaris E5 Ubuntu Edition

BUILD INSTRUCTIONS?
===================

Your Ubuntu environment is expected to contain a similar setup to that
used for flashing ubuntu devices (see [1], installing phablet-tools
ppa). You will need at least two other components installed:

        $ sudo apt-get install gcc-arm-linux-androideabi abootimg

Specific sources are organised by branch and comments in the
commits. First, you should clone the project:

        $ git clone git@github.com:bq/aquaris-E5.git

After it, choose the branch you would like to build:

	$ cd aquaris-E5/
	$ git checkout aquaris-E5-ubuntu-master

Then, build the kernel:
        $ ./makeMtk -t vegetahd n k

You can build a flashable image with

	$ cd testboot
        $ ./mkbootimg.sh vegetahd

You can flash this with:

        $ fastboot flash boot boot.img

[1]: https://developer.ubuntu.com/en/start/ubuntu-for-devices/installing-ubuntu-for-devices/
