#!/bin/bash
composer install
php artisan key:generate
php artisan migrate
php artisan storage:link