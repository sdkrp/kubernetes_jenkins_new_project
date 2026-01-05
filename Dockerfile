FROM rockylinux:8

RUN yum install -y httpd && yum clean all

RUN echo "<h1>Hello from Jenkins Docker Build</h1>" > /var/www/html/index.html

EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
