# php-fpm/Dockerfile
FROM php:7.2-fpm

RUN apt-get update && apt-get install -y \
    nano \
    libzip-dev zip \
    libxslt1.1  libxslt1-dev 

# krævet for at få Composer til at fungere, som del af imaget
RUN  docker-php-ext-configure zip --with-libzip &&\
     docker-php-ext-install zip &&\
     rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install mysqli pdo_mysql xsl intl &&\
    pecl install xdebug-2.6.1 && docker-php-ext-enable xdebug

#ENV BUILDPATH =/home/bent/sourcecode/nginxsocket/php-fpm
RUN curl -sSk https://getcomposer.org/installer | php -- --disable-tls && \
	mv composer.phar /usr/local/bin/composer

COPY xdebug-connect-back.ini /usr/local/etc/php/conf.d/docker-php-ext.xdebug.ini

RUN groupadd dev -g 999 && \
    useradd dev -g dev -d /home/dev -m && \
    passwd -d dev
