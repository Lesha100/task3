FROM php:8.3-apache

RUN docker-php-ext-install bcmath

RUN a2dismod mpm_event mpm_worker 2>/dev/null || true \
    && a2enmod mpm_prefork rewrite

COPY index.php /var/www/html/index.php
COPY .htaccess /var/www/html/.htaccess

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf