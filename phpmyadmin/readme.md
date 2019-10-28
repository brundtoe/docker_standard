# phpmyadming

Dette image buildes kun for at kunne foretage en generelt image opdatering som berører alle docker-compose.yml filerne i stedet for at skulle opdater dem alle

phpmyadmin:48 er bygget på php-7.2-alpine

## Dockerfile

Der tilføjes editoren nano med

RUN apk add -q nano

## Build image

docker build -t phpmyadmin:bbr .
