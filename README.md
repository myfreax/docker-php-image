# Docker PHP image
 
> Docker PHP Image that Contains commonly used extensions

## Features

- Ubuntu 16.04
- PHP7.0+PHP-FPM

## Usage

### Start a PHP-FPM server instance
```bash
docker pull huangyanxiong2012/docker-php-image
docker run --name some-app huangyanxiong2012/docker-php-image 
```
### Using a custom MySQL configuration file
 
```bash
docker run --name some-app -v /docker/php/etc/php.ini:/etc/php/7.0/fpm/php.ini  huangyanxiong2012/docker-php-image
```
in docker-compose.yml
```yaml
    volumes:
      - ./docker/php/etc/php.ini:/etc/php/7.0/fpm/php.ini
      - ./docker/php/etc/php-fpm.conf:/etc/php/7.0/fpm/php-fpm.conf
      - ./docker/php/etc/php-fpm.d/www.conf:/etc/php/7.0/fpm/pool.d/www.conf
      - ./docker/php/logs/:/var/log/php/
```

## Extension

PHP Modules | Zend Modules
-----| ------- | -------------
Core,date,libxml,openssl,pcre,zlib,filter,hash,pcntl,Reflection | xdebug
SPL,session,standard,mysqlnd,PDO,xml,calendar,ctype,dom | opcahce
sockets,ev,mbstring,fileinfo,ftp,gd,gettext,iconv,json,exif,mongodb |
mysqli,pdo_mysql,Phar,posix,readline,shmop,SimpleXML,eio,swoole |
sysvmsg,sysvsem,sysvshm,tokenizer,uv,wddx,xmlreader,xmlwriter,xsl,zip,Zend |