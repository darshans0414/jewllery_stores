FROM php:8.1-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install unzip and git (required for composer dependencies)
RUN apt-get update && apt-get install -y unzip git zip

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www/html

# Copy files
COPY . .

# Install dependencies
RUN composer install

# Expose port
EXPOSE 80
