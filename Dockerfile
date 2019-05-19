FROM wyveo/nginx-php-fpm:php73

COPY docker/nginx/default.conf /etc/nginx/conf.d/default.conf
#COPY nginx.conf /etc/nginx/

# Add the application
COPY . /app

WORKDIR /app

RUN composer install
