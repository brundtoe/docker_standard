# php-fpm/Dockerfile
FROM php:8.0-fpm-buster

RUN apt-get update && apt-get install -y \
    nano \
    libzip-dev zip \
    libxslt1.1  libxslt1-dev 

# krævet for at få Composer til at fungere, som del af imaget
RUN  docker-php-ext-configure zip &&\
     docker-php-ext-install zip &&\
     rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install mysqli pdo_mysql xsl intl &&\
    pecl install xdebug-3.0.4 && docker-php-ext-enable xdebug

#ENV BUILDPATH =/home/bent/sourcecode/nginxsocket/php-fpm
RUN curl -sSk https://getcomposer.org/installer | php -- --disable-tls && \
    mv composer.phar /usr/local/bin/composer

RUN sed -i -e 'a\xdebug.mode=debug' \
    -e 'a\xdebug.client_host=172.18.0.1' \
    /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

RUN groupadd dev -g 999 && \
    useradd dev -g dev -d /home/dev -m && \
    passwd -d dev
