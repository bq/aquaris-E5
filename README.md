WHAT IS THIS?
=============

Linux Kernel source code for the device:
* bq aquaris E5 HD


BUILD INSTRUCTIONS?
===================

Specific sources are separated by branches and each version is tagged with it's corresponding number. First, you should
clone the project:

        $ git clone git@github.com:bq/aquaris-E5.git

After it, choose the version you would like to build:

*Latest version of Aquaris E5 HD*

        $ cd aquaris-E5/
        $ git checkout aquaris-E5

*Custom version of Aquaris E5 HD*

        $ cd aquaris-E5/
        $ git checkout GIT_TAG_NAME
Finally, build the kernel according the next table of product names:

| device                                                                                | product                                                               |
| --------------------------|-------------------------|
| bq aquaris E5 HD                                      | vegetahd                                      |

        $ ./makeMtk -t {product} n k
~                                                                                                                   
~                                                                            
