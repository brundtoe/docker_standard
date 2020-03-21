# phpmyadming

Dette image buildes kun for at kunne foretage en generelt image opdatering som berører alle docker-compose.yml filerne i stedet for at skulle opdater dem alle

phpmyadmin:48 var bygget på php-7.3-fmp-alpine

phpmyadmin:49 er bygget på debian

## Dockerfile

Der tilføjes editoren nano med

RUN apk add -q nano

## Build image

docker build -t phpmyadmin:bbr .
