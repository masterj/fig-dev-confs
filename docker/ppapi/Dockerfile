FROM ubuntu:14.04

RUN apt-get update && apt-get -y upgrade


RUN apt-get -y install python-software-properties software-properties-common

RUN apt-add-repository ppa:ondrej/php5

RUN apt-get install -y  php5-apcu \
    php5-cli \
    php5-curl \
    php5-intl \
    php5-mcrypt \
    php5-gd \
    php5-geoip \
    php5-gmp \
    php5-dev \
    php5-xdebug \
    php5-readline \
    php5-imagick \
    php5-mysql \
    php5-sqlite 


RUN mkdir -p /apiroot

ADD ./api /apiroot

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer


#ADD run.sh /apiroot
#RUN chmod +x /apiroot/run.sh

WORKDIR /apiroot

#RUN ls -l apps
#RUN ls -l apps/api
RUN composer install

VOLUME /apiroot

#install phantom for tests
