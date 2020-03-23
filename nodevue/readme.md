# Node image med Vue CLI

nodevue:bbr buildes fra sourcecode/docker_standard/nodevue. Der er indeholdt en standard package.json. 

Denne *'package.json** anvendes pt ikke i stedet installeres alene de globale packages @vue/cli og json-server.

copy af package.json til imaget og den efterfølgende npm install er disabled, da der i development udgave alligevel linkse fra hostes sourcecode og dermed overrules indholdet i node_modules i containeren

Det betyder at imaget kan anvendes generelt i alle Vue apps til docker-compose-develop.yml

Det anvendes bl.a. for applikationerne einsteinish, francisromain og shekhargulati.

Dette image bygger på mit eget image node:bbr

nodevue:bbr importerer Vue Command Line Interface og vue-cli-service, som er en implementering af webpack startes i development mode.

docker build -t nodevue:bbr .
