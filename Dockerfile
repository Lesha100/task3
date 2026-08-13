FROM php:8.3-cli

RUN docker-php-ext-install bcmath

WORKDIR /app

COPY index.php .

CMD ["sh", "-c", "php -S 0.0.0.0:${PORT:-8docker build --no-cache -t task3 .080} -t /app /app/index.php"]