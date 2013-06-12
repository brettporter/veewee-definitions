veewee-definitions
==================

Custom definitions for veewee to build vagrant boxes.

* Tested with [VeeWee](https://github.com/jedi4ever/veewee) 2f86263 for CentOS 6.3
* Tested with veewee 6c0d02 for CentOS 6.4
* Tested with veewee 0.3.7 gem

# Boxes
- **CentOS-*-openjdk** minimal with java 1.6.0 openjdk devel
- **CentOS-*-maestro** minimal with packages needed by Maestro for faster provisioning

# Installation
The .rvmrc will create a new gemset just for veewee. Run `bundle install` to get all the gems.

Create a link from veewee/definitions to this definitions folder if using veewee from git.

# Building
To build a box

    veewee vbox list
    veewee vbox build $BOX_NAME
    veewee vbox validate $BOX_NAME
    vagrant basebox export $BOX_NAME
    vagrant box add $BOX_NAME $BOX_NAME.box

# Deploying to repository

Example

    export CLASSIFIER=x86_64-minimal
    mvn deploy:deploy-file -Durl=https://repo.maestrodev.com/archiva/repository/public-releases \
      -DrepositoryId=maestrodev \
      -Dfile=$BOX_NAME.box \
      -DpomFile=pom.xml \
      -Dpackaging=box \
      -Dclassifier=$CLASSIFIER
