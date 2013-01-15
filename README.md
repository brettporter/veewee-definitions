veewee-definitions
==================

Custom definitions for veewee to build vagrant boxes

Tested with [VeeWee](https://github.com/jedi4ever/veewee) 2f86263

Checkout VeeWee and link this repo into definitions/ to make the definitions available. Then run 

    veewee vbox list
    veewee vbox build $BOX_NAME
    veewee vbox validate $BOX_NAME
    vagrant basebox export $BOX_NAME
    vagrant box add $BOX_NAME $BOX_NAME.box

# Boxes
- **CentOS-6.3-x86_64-openjdk** minimal with java 1.6.0 openjdk devel
- **CentOS-6.3-x86_64-maestro** with packages needed by Maestro for faster provisioning
