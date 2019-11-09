# Homestead nginx konfigurationsfiler

Opdateret november 2019

Mappen indeholder en kopi af nginx konfigurationsfiler, som er kopieret fra kørende Homestead instanser

## Homestead skabeloner

Homestead anvender scripts som indeholder en skabelon til at opbygge nignx og andre konfiguraitonsfiler. Der overføres variable fra Homested.rb. Disse variable stammer i en stor udstrækning fra Homestead.yaml.

Skabelonerne/scripts findes i en Homestea installation i

- scripts/site-types
- vendor/laravel/homestead/scripts/site-types

For nginx anvendes som grundmodel **modx.sh**


## project devops/code

Dette er den første model jeg har anvendt. Den er svær at læse da der inkluderes

- /etc/nginx/snippets/fastcgi-php.conf som inkluderer
- /etc/nginx/fastcgi.conf

Kilde: git repository https://github.com/brundtoe/pupptcode.git

- devops/code/environments/production/site/profile/files/nginxdev.conf

Modellen er afhængig af de to filer, der inkludres og derfor svær at portere til et andet operativsystem





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

**DKilde**

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

Kilde: express.test

Denne konfiguration indeholder en række javascript projekter, som anvender node som webserver.

Det er her tilstrækkeligt at proxie til port 3000. De enkelte apps startes med **npm start** i deres root folders

sites:
    - map: jsdemo.test
      to:  3000
      type: proxy


 
