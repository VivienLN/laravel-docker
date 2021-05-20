#!/bin/bash
chown -R www-data:www-data /var/www

composer install
php artisan key:generate
php artisan migrate
php artisan storage:link

exec php-fpm