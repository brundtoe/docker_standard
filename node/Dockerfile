# node/Dockerfile
# kan ikke køre selvstændigt men grundlag for projekt specifik Dockerfile
FROM node:14-buster

RUN apt-get update && apt-get install -y \
    nano \
    && rm -rf /var/lib/apt/lists/*

RUN groupadd dev -g 999 && \
    useradd dev -g dev -d /home/dev -m && \
    passwd -d dev && \
    echo "dev ALL=(ALL) ALL" > /etc/sudoers

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app


