FROM centos
Run yum -y update
RUN yum -y install git httpd
COPY code/index.html /var/www/html/
VOLUME /var/www/html/
VOLUME /var/log
CMD ["apachectl","-D","FOREGROUND"]
