FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install nginx
RUN mkdir /var/www/example.com
RUN echo "127.0.0.1" > /etc/hosts

COPY index.html /var/www/example.com/index.html
COPY example.com.conf /etc/nginx/sites-available/example.com/index.html
RUN  ln -s /etc/nginx/sites-available/example.com/index.html /etc/nginx/sites-enabled
