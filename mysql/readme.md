## Build image

docker build -t mysql:bbr .


## Run fra commandline

```
   docker run --name test --env MYSQL_ROOT_PASSWORD=example mysql:bbr
```


## Dockerfile

user dev og grp dev kan ikke anvendes, da user mysql er 999

