veewee-definitions
==================

Custom definitions for veewee to build vagrant boxes.

* Tested with [VeeWee](https://github.com/jedi4ever/veewee) 2f86263 for CentOS 6.3
* Tested with veewee ebb81d for CentOS 6.4

# Boxes
- **CentOS-*-openjdk** minimal with java 1.6.0 openjdk devel
- **CentOS-*-maestro** minimal with packages needed by Maestro for faster provisioning

# Installation

Run `bundle install` to get all the gems.

# Building
To build a box

    veewee vbox list
    veewee vbox build --auto --nogui $BOX_NAME
    veewee vbox validate $BOX_NAME
    veewee vbox export $BOX_NAME
    vagrant box add $BOX_NAME $BOX_NAME.box

## Using a proxy

    VEEWEE_http_proxy=http://proxy:3128/ VEEWEE_https_proxy=http://proxy:3128/

# Deploying to repository

Example

    export CLASSIFIER=x86_64-minimal-2
    mvn deploy:deploy-file -Durl=https://repo.maestrodev.com/archiva/repository/public-releases \
      -DrepositoryId=maestrodev \
      -Dfile=$BOX_NAME.box \
      -DpomFile=pom.xml \
      -Dpackaging=box \
      -Dclassifier=$CLASSIFIER
