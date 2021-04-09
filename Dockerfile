FROM ubuntu
RUN apt update
RUN apt install apache2 -y
RUN apt-get update -y
RUN apt-get install -y tzdata
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
ENV TZ Asia/Colombo
ENTRYPOINT ["/app/docker-entrypoint.sh"]
ENV name venu DEVOPS
