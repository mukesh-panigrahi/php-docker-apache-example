FROM php:7.0-apache

RUN apt-get update && rm -rf /var/lib/apt/lists/* && \
    apt-get install -y php5-mysql && \
    apt-get clean

COPY myapp /var/www/html/
