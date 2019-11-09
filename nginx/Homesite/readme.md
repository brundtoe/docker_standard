# Homestead nginx konfigurationsfiler

Opdateret november 2019

Mappen indeholder en kopi af nginx konfigurationsfiler, som er kopieret fra kørende Homestead instanser


## projects/laravel/Homebox/php

Dette er en standard konfiguration af nginx

sites:
    - map: websites.test
      to: /home/vagrant/php/websites/htdocs
      php: "7.3"

filnavn: websites.test

## projects/laravel/Homesite

Dette er en standard konfiguration af en webapp med en frontend og en php backend.

I denne konfiguration anvendes to site definitioner

sites:
    - map: backend.test
      to: /home/vagrant/code/backend/public
      php: "7.3"
    - map: production.test
      to: /home/vagrant/code/frontend/dist

**Dokumenteret i filerne:**

- production.test
- backend-test


## projects/laravel/websites

filnavn: vuesites.test

Dette er min egen konfigurationsfile for en custom site-type kaldet **vuesites.**

Eksemplet viser hvordan en webapp med en frontend og en backend server kan konfigureres.

Der anvendes kun een site definition

frontend er den **buildede** udgave af en Vue.js app, men kan være en vilkårlig website med statiske filer.


I denne konfiguration anvendes kun en site definition

sites:
    - map: homestead.test
      to: /home/vagrant/code/
      php: "7.3"
      type: vuesites



Jeg har i forhold til Homestead standarden indsat root direktiver de to locationsblocks

backend er en proxy unix:/var/run/php/php7.3-fpm.sock

## projects/laravel/Homestead/javascript

filnavn: express.test

Denne konfiguration indeholder en række javascript projekter, som anvender node som webserver.

Det er her tilstrækkeligt at proxie til port 3000. De enkelte apps startes med **npm start** i deres root folders

sites:
    - map: jsdemo.test
      to:  3000
      type: proxy


 
