WHAT IS THIS?
=============

Linux Kernel source code for the devices:
* bq aquaris E5 HD
* bq aquaris E5 FullHD


BUILD INSTRUCTIONS?
===================

Specific sources are separated by branches and each version is tagged with it's corresponding number. First, you should
clone the project:

        $ git clone git@github.com:bq/aquaris-E5.git

After it, choose the version you would like to build:

*Aquaris E5 HD*

        $ cd aquaris-E5/
        $ git checkout aquaris-E5

*Aquaris E5 FHD*

        $ cd aquaris-E5/
        $ git checkout aquaris-E5FHD


Finally, build the kernel according the next table of product names:

| device                                                                                | product                                                               |
| --------------------------|-------------------------|
| bq aquaris E5 HD                                      | vegetahd                                      |
| bq aquaris E5 Full HD                 | vegetafhd                     |

        $ ./makeMtk -t {product} n k
