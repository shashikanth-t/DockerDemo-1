FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install -y git curl apache2

RUN rm -rf /var/www/*
ADD src /var/www

EXPOSE 80
ENTRYPOINT apachectl -D FOREGROUND
