FROM remote-host

COPY ./conf/nginx.repo /etc/yum.repos.d/nginx.repo

#RUN yum update -y

USER root

RUN yum install nginx openssl --enablerepo=nginx-1.20.2-1.el8.ngx.x86_64.rpm -y 


# Install EPEL Repo
#RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm 

#RUN rpm -Uvh http://rpms.remirepo.net/enterprise/remi-release-8.rpm

# Install PHP
#RUN yum --enablerepo=remi-php73 -y install php php-bcmath php-cli php-common php-gd php-intl php-ldap php-mbstring \
#    php-mysqlnd php-pear php-soap php-xml php-xmlrpc php-zip

#RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

#RUN yum install wget -y 

#RUN wget http://rpms.remirepo.net/enterprise/remi-release-7.rpm

#RUN subscription-manager repos --enable=rhel-7-server-optional-rpms

#RUN yum install yum-utils -y 

#RUN yum install epel-release -y 

#RUN yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm


#RUN yum-config-manager --enable remi-php74

#RUN yum install php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysql -y


#USER root 

#RUN yum-config-manager --enable remi-php74

VOLUME /var/www/html /var/log/nginx /var/log/php-fpm /var/lib/php-fpm

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./bin/start.sh /start.sh 

RUN chmod +x /start.sh 

CMD /start.sh 



