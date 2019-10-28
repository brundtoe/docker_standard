# Node image med Vue CLI

nodevue:bbr buildes fra sourcecode/docker_standard/nodevue. Der er indeholdt en standard package.json. Det fungerer for applikationerne einsteinish, francisromain og shekhargulati, da deres package.json til brug på hosten (Komplett) er ens.

**Modelen kan ikke anvendes generelt**


Dette image bygger på mit eget image node:bbr

nodevue:bbr importerer Vue Command Line Interface og vue-cli-service, som er en implementering af webpack startes i development mode.

docker build -t nodevue:bbr .


## modifikation

copy af package.json til imaget og den efterfølgende npm install er disabled, da der i development udgave alligevel linkse fra hostes sourcecode og dermed overrules indholdet i node_modules i containeren

Det betyder at imaget kan anvendes generelt i alle Vue apps til docker-compose-develop.yml
