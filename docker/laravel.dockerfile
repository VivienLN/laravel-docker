FROM php:7.4-fpm

# Set working directory
WORKDIR /var/www
# USER $user

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Get Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copy current dir
COPY . /var/www

# chown
RUN chown -R www-data:www-data /var/www

# Artisan stuff
# RUN php artisan storage:link

EXPOSE 9000