## Build image

docker build -t mysql:bbr .


## Run fra commandline

```
   docker run --name test --env MYSQL_ROOT_PASSWORD=example mysql:bbr
```

## Dockerfile

user dev og grp dev kan ikke anvendes, da user mysql er 999

## docker-compose.yml
Docker compose specifikation som anvender mysql:bbr og phpmyadmin:bbr

Administration af mysql databasen foregår på hosten via http://localhost:8080

## Importer data med adminer

login på databasen med root og example som password

Opret databasen mystore

Importer filerne fra wdmycloud/database/mysqlbackup/mystore-bookstore

## databasen
Hvis man tager docker composer build ned så forsvinder data med mindre, den er mapped via en volume til hosten.

```
    volumes:
      - mystore:/var/lib/mysql
```

``` 
volumes:
    mysqldata:
      external: true
```


## Adgang fra hosten mee DataGrip

start containerne med **docker-compose up d

find database containerens ip adresse, Den skifter normalt ved docker-compose up men bevares hsi der anvendes stop/start

    docker network inspect humle_net

Eksempel 172.18.0.3

Connect til denne ip adresse fra JetStorm DataGrip

## Adgang fra containeren med
 
```docker exec -it bookstore /bin/sh``` 

Udfør i containeren ```mysql -u root -p example
 
Nu er der adgang til mysql client kommandoerne.
