FROM httpd:2.4

RUN apt-get update && apt-get install -y \
    nano \
    && rm -rf /var/lib/apt/lists/*

RUN echo "Include conf/extra/httpd-vhosts.conf" \
    >> /usr/local/apache2/conf/httpd.conf

RUN groupadd dev -g 999 && \
    useradd dev -g dev -d /home/dev -m && \
    passwd -d dev && \
    echo "dev ALL=(ALL) ALL" > /etc/sudoers
