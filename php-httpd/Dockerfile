# php-fpm/Dockerfile
FROM php:7.2-fpm

RUN apt-get update && apt-get install -y \
    nano \
    && rm -rf /var/lib/apt/lists/*

#ENV BUILDPATH =/home/bent/sourcecode/nginxsocket/php-fpm
RUN curl -sSk https://getcomposer.org/installer | php -- --disable-tls && \
	mv composer.phar /usr/local/bin/composer

RUN groupadd dev -g 999 && \
    useradd dev -g dev -d /home/dev -m && \
    passwd -d dev