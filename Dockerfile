FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install nginx

RUN mkdir /var/www/example.com
COPY index.html /var/www/example.com/index.html

COPY example.com.conf /etc/nginx/sites-available
RUN  ln -s /etc/nginx/sites-available/example.com.conf /etc/nginx/sites-enabled
RUN  rm /etc/nginx/sites-enabled/default

CMD [ "nginx", "-g" , "daemon off;" ]
