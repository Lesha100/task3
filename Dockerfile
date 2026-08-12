FROM php:8.3-apache

RUN docker-php-ext-install bcmath

RUN a2enmod rewrite

COPY index.php /var/www/html/index.php
COPY .htaccess /var/www/html/.htaccess

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf