# node/Dockerfile
# 
#

FROM mysql:8

RUN apt-get update && apt-get install -y \
    nano \
    && rm -rf /var/lib/apt/lists/*

# user dev og grp dev kan ikke anvendes, da user mysql er 999
#RUN groupadd dev -g 999 && \
#    useradd dev -g dev -d /home/dev -m && \
#    passwd -d dev && \
#    echo "dev ALL=(ALL) ALL" > /etc/sudoers




