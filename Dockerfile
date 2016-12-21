FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
        php php-dev php-cli php-common php-fpm php-gd php-mcrypt php-mongodb php-zmq libphp-predis \
        php-mbstring php-mysql php-pear php-xml php-opcache php-readline php-ast php-bcmath php-bz2 \
        php-curl php-date php-geoip php-imagick php-intl php-jwt php-memcached php-mongodb php-msgpack \
        php-redis php-rrd php-solr php-sqlite3 php-streams php-tidy php-uuid php-xdebug php-xmlrpc php-zmq \
        libevent-dev libuv1-dev\
&& sed -i 's/^;daemonize\s*=\s*yes$/daemonize = no/' /etc/php/7.0/fpm/php-fpm.conf \
&& sed -i 's/^listen\s*=\s*\/run\/php\/php7.0-fpm.sock$/listen = 9000/' /etc/php/7.0/fpm/pool.d/www.conf \
&& service php7.0-fpm stop \
&& mkdir -p /run/php/ 
COPY pecl-ext-install /usr/local/bin/
RUN pecl-ext-install
WORKDIR /var/www/html
EXPOSE 9000
CMD ["php-fpm7.0"]