Dette image buildes kun for at kunne foretage en generelt image opdatering som berører alle docker-compose.yml filerne i stedet for at skulle opdater dem alle


ENV TRELDE=dymmy anvendes udelukkende for t imaget kan få et andet image id end masteren fra docker hub. dermed kan phpmyadmin:bbr slettes og den downloadede version bevares.

Build image

docker build -t phpmyadmin:bbr .
