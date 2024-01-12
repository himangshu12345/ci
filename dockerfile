FROM ubuntu
RUN apt-get update
RUN apt-get upgrade
WORKDIR /app
COPY app.py  /var/www/html/index.html
RUN apt-get install apache2
RUN systemctl enable apache2
RUN systemctl start apache2
