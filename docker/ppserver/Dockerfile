FROM ubuntu:14.04

RUN apt-get update && apt-get -y upgrade

RUN apt-get -y install  apache2 apache2-utils

#COPY ./public-html/ /usr/local/apache2/htdocs/
COPY ./vhosts/	/etc/apache2/sites-enabled/

RUN service apache2 start






