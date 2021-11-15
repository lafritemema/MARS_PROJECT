# MARS_PROJECT

This repository contains all the installation script necessary to install and update the running environment for the MARS project.
All these script are done for a linux operating system.
An Ubuntu distribution is prefered.

## FILES DESCRIPTION

### environment folder

The micro-services composing the MARS application need several third services application to run : 
* MongoDB : the database software, used to store data.
* NodeJS: the Javascript runtime environment, to execute micro-services writed in Javascript (sequencer, communication proxy, HMI ...)
* Python 3 : the Python runtime environment, to execute micro-services writed in python (build processor ...)
* RabbitMQ : the message broker software, used by the micor-service to communicate with each other

The environment folder contains the installation script for these applications.

### install.sh

Script to download the source code for all the micro-services composing the application and install the dependences for all of them.

### update.sh

Script to update the source code of micro-services composing the application and update the dependences for all of them.  
If one part of the application is missing, the script reinstall all the application

### run.sh

Script to run all the micro-services (sequencer, enip-proxy and build-processor).
The script launch a new terminal for each micro-services.

### run_build_processor.sh

Script to run only the build-processor service

### run_enip_proxy.sh

Script to run only enip-proxy service

### run_sequencer.sh 

Script to run only the sequencer service

### run_hmi.sh

Script to run only services for the human machine interface

## INSTALL AND UPDATES

### INSTALL THE APPLICATION

For the first installation, you have to clone the MARS_PROJECT repository locally following these operations : 
* open a terminal and navigate to the folder in which you want to install the application
* run the command `git clone https://github.com/lafritemema/MARS_PROJECT` to clone the repository locally
* navigate in the MARS_PROJECT folder using the command `cd MARS_PROJECT`.
* run the command `chmod +x install.sh run.sh run_build_processor.sh run_enip_proxy.sh run_hmi.sh run_sequencer.sh update.sh` to make the scripts executable.

After scripts downloading, you can launch the installation script to install the MARS micro-services, use the command : `./install.sh`  
This command create a folder for each micro-service, download the source code and install the dependences.

### UPDATE THE APPLICATION

Before to update the microservices, it's preferable to update the installation scripts, following these operations : 
* open a terminal and navigate to the folder in which you want to install the application
* run the git command `git pull origin master` to update the scripts
* run the command `chmod +x install.sh run.sh run_build_processor.sh run_enip_proxy.sh run_hmi.sh run_sequencer.sh update.sh` to make the scripts executable

After scripts updating, you can launch the update script to update the MARS micro-services, use the command : `./update.sh`  
This command download the new source code and install the dependences for each micro-services.

## RUN THE APPLICATION

To run the application, follow these operations:
* open a terminal and navigate in the MARS_PROJECT folder
* run the command `./run.sh`
This command launch one terminal by micro-services.

If you need to run only a specific micro-service, use the following commands :
* `./run_build_processor.sh` to run build processor service
* `./run_enip_proxy.sh` to run enip-proxy service
* `./run_sequencer.sh` to run sequencer service
* `./run_hmi.sh` to run services for human machine interface
