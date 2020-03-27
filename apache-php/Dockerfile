# imaget anvender debian stretch

FROM php:7.4-apache-buster

RUN apt-get update && apt-get install -y \
    git nano acl\
    libxslt1.1 libxslt1-dev

# krævet for at få Composer til at fungere, som del af imaget
RUN apt-get install -y \
        libzip-dev \
        zip &&\
     docker-php-ext-install zip &&\
     docker-php-ext-configure zip  &&\
     rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install mysqli pdo_mysql xsl intl &&\
    pecl install xdebug-2.9.3 && docker-php-ext-enable xdebug

RUN curl -sSk https://getcomposer.org/installer | php -- --disable-tls && \
    mv composer.phar /usr/local/bin/composer

RUN a2enmod rewrite
COPY xdebug-connect-back.ini /usr/local/etc/php/conf.d/docker-php-ext.xdebug.ini

RUN groupadd dev -g 999 && \
    useradd dev -g dev -d /home/dev -m && \
    passwd -d dev && \
    echo "dev ALL=(ALL) ALL" > /etc/sudoers
