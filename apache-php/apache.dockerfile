# imaget anvender debian stretch

FROM php:7.2-apache

RUN apt-get update && apt-get install -y \
    git nano \
    libxslt1.1 libxslt1-dev

# krævet for at få Composer til at fungere, som del af imaget
RUN apt-get install -y \
        libzip-dev \
        zip &&\
     docker-php-ext-configure zip --with-libzip &&\
     docker-php-ext-install zip &&\
     rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install mysqli pdo_mysql xsl intl &&\
    pecl install xdebug-2.6.1 && docker-php-ext-enable xdebug

RUN curl -sSk https://getcomposer.org/installer | php -- --disable-tls && \
    mv composer.phar /usr/local/bin/composer

RUN groupadd dev -g 999 && \
    useradd dev -g dev -d /home/dev -m && \
    passwd -d dev && \
    echo "dev ALL=(ALL) ALL" > /etc/sudoers
