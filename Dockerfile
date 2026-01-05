FROM centos:7

LABEL maintainer="dhanushkodimsc@gmail.com"

RUN yum install -y \
    httpd \
    zip \
    unzip \
 && yum clean all

WORKDIR /var/www/html

ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/

RUN unzip photogenic.zip \
 && cp -rvf photogenic/* . \
 && rm -rf photogenic photogenic.zip

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
