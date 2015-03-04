# DOCKER-VERSION 0.10.0

FROM ubuntu:14.04

# make sure apt is up to date

RUN apt-get update && apt-get -y upgrade

# install nodejs and npm
RUN apt-get install -y python-software-properties  software-properties-common

RUN apt-add-repository -y ppa:chris-lea/node.js

RUN apt-get install -y nodejs-legacy npm git git-core curl wget

RUN mkdir /ppadmin
#replace with code_volume global VAR
ADD ./admin /ppadmin

#USER jsbuild

RUN ls -l  /ppadmin

WORKDIR /ppadmin

RUN cp src/app/configLocal.js.dist src/app/configLocal.js
 
RUN  npm install -g grunt 

RUN  grunt

VOLUME /ppadmin
