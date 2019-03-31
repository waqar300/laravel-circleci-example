FROM ambientum/php:7.3-nginx

USER root

COPY composer.lock composer.json /var/www/app/

COPY database /var/www/app/database

RUN composer install -n --prefer-dist --no-scripts --no-dev

COPY . /var/www/app/

EXPOSE 8083

RUN chown -R ambientum:ambientum storage