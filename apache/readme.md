# build image

docker image build -t apache:bbr .

Under build tilføjes de nødvendige linjer til xdebug.ini

pr april 2021 builded med php8.0-apache-buster

tjekket via **docker-compose up -d**

=======================

gamle noter fra marts 2020

Kan pt ikke anvende php7.4-apache-buster


Der er sket nogle ændringer siden php7.3-apache-buster

Kan ikke builde fejl med --with libzip

mappen mod_rewrite vise def af virutalhost med rewrite on
