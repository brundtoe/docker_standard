# mongo-express

docker build -t mongo-express:bbr .

filen docker-compose.yml viser, hvad der er netop tilstrækkeligt til at connecte til en mongo database.

Mongo-express 

- lytter på port 8081

environment
- ME_CONFIG_MONGODB_SERVER: mongodb


skal være defineret hvis serveren der lyttes efter hedder andet end "mongo"
