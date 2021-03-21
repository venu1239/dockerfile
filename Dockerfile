FROM nginx
RUN apt update
RUN apt install apache2 -y
ADD . /usr/local/etc/nginx
CMD ["nginx", "-g","daemon off"]
ENTRYPOINT apachectl -D FOREGROUND
ENV name venu DEVOPS
