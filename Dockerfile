# Pull base image
FROM ubuntu:17.10

# Autor
MAINTAINER Ernesto Sequeira erdaseq@gmail.com

#Install Nginx
RUN apt-get update
RUN apt-get -y install nginx
RUN rm -rf /var/lib/apt/lists/*
RUN chown -R www-data:www-data /var/lib/nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

# Define working directory
WORKDIR /etc/nginx

# Define port
EXPOSE 89

# Define default command
CMD ["nginx"]
