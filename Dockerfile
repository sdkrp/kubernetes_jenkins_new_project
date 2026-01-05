FROM rockylinux:8

LABEL maintainer="dhanushkodimsc@gmail.com"

RUN yum install -y \
    httpd \
    zip \
    unzip \
 && yum clean all

WORKDIR /var/www/html

COPY photogenic.zip /var/www/html/

RUN unzip photogenic.zip \
 && cp -rvf photogenic/* . \
 && rm -rf photogenic photogenic.zip

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
