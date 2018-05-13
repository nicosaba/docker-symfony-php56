FROM ubuntu:16.04
MAINTAINER @nicolassabater <nicolassabater@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y software-properties-common
RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
RUN apt-get update
RUN apt-get -y install nano

RUN apt-get install -y php5.6
RUN apt-get install -y php5.6-mbstring
RUN apt-get install -y php5.6-mcrypt
RUN apt-get install -y php5.6-mysql
RUN apt-get install -y php5.6-xml
RUN apt-get install -y php5.6-gd
RUN apt-get install -y php5.6-curl
RUN apt-get install -y php5.6-bcmath
RUN apt-get install -y php5.6-zip
RUN apt-get install -y php5.6-opcache
RUN apt-get install -y php-amqplib
RUN apt-get install -y php-xdebug
RUN apt-get install -y php5.6-pgsql

RUN mkdir /etc/apache2/from-host
RUN echo "" >> /etc/apache2/apache2.conf \
    && echo "# Con esto incluyo la configuración de los vhost desde el host como vulumen >> /etc/apache2/apache2.conf" \
    && echo "Include from-host/*.conf" >> /etc/apache2/apache2.conf
RUN chown -R www-data:www-data /var/www/
RUN rm -R /var/www/html
RUN rm /etc/php/5.6/apache2/php.ini
RUN ln -s /var/www/configs/php.ini /etc/php/5.6/apache2/
RUN echo alias reApache='/etc/init.d/apache2 reload' >> ~/.bashrc
env APACHE_RUN_USER    www-data
env APACHE_RUN_GROUP   www-data
env APACHE_PID_FILE    /var/run/apache2.pid
env APACHE_RUN_DIR     /var/run/apache2
env APACHE_LOCK_DIR    /var/lock/apache2
env APACHE_LOG_DIR     /var/log/apache2
CMD []
ENTRYPOINT ["apachectl","-DFOREGROUND"]
EXPOSE 80

