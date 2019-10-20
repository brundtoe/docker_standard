# Node image med Vue CLI

nodevue:bbr buildes fra sourcecode/docker_standard/nodevue. Der er indeholdt en standard package.json. Det fungerer for applikationerne einsteinish, francisromain og shekhargulati, da deres package.json til brug på hosten (Komplett) er ens.

**Modelen kan ikke anvendes generelt**


Dette image bygger på mit eget image node:bbr

nodevue:bbr importerer Vue Command Line Interface og vue-cli-service, som er en implementering af webpack startes i development mode.

Docker build -t nodevue:bbr .



