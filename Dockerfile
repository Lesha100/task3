FROM php:8.3-apache

RUN docker-php-ext-install bcmath

COPY index.php /var/www/html/index.php
COPY .htaccess /var/www/html/.htaccess

RUN a2enmod rewrite

EXPOSE 80