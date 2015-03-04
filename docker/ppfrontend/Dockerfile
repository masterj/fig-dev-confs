# DOCKER-VERSION 0.10.0

FROM ubuntu:14.04

# make sure apt is up to date

RUN useradd jsbuild

RUN mkdir -p /home/jsbuild/pp-frontend-new && chown jsbuild:jsbuild /home/jsbuild/pp-frontend-new

RUN apt-get update && apt-get -y upgrade

# install nodejs and npm
RUN apt-get install -y python-software-properties  software-properties-common

RUN apt-add-repository -y ppa:chris-lea/node.js

RUN apt-get install -y nodejs-legacy npm git git-core curl wget

#replace with code_volume global VAR
ADD ./pp-frontend-new /home/jsbuild/pp-frontend-new

RUN cd /home/jsbuild/pp-frontend-new && npm install -g yo gulp bower

#USER jsbuild

RUN ls -l  /home/jsbuild/pp-frontend-new

WORKDIR /home/jsbuild/pp-frontend-new
 
RUN  npm install 

RUN gulp serve

VOLUME /home/jsbuild/pp-frontend-new
