FROM ubuntu:24.04

RUN apt-get update &&\
    apt-get install -y apache2 mariadb-server

COPY htdocs/ /usr/local/apache2/htdocs/

EXPOSE 80

CMD service mysql start && apachectl -D FOREGROUND

