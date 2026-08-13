FROM php:8.3-apache

RUN docker-php-ext-install bcmath \
    && a2dismod mpm_event mpm_worker 2>/dev/null || true \
    && a2enmod mpm_prefork

COPY index.php /var/www/html/index.php

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf \
    && echo "FallbackResource /index.php" >> /etc/apache2/sites-available/000-default.conf

CMD ["apache2-foreground"]