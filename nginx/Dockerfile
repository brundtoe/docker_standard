# nginx/Dockerfile
FROM nginx:1.17

RUN apt-get update && apt-get install -y \
    nano \
    && rm -rf /var/lib/apt/lists/*

RUN groupadd dev -g 999 && \
    useradd dev -g dev -d /home/dev -m && \
    passwd -d dev && \
    echo "dev ALL=(ALL) ALL" > /etc/sudoers
