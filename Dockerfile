FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
ADD src /var/www
EXPOSE 80
ENTRYPOINT apachectl -D FOREGROUND
