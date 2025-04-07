FROM php:8.1-apache

# Enable mod_rewrite
RUN a2enmod rewrite

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www/html

# Copy all project files
COPY . /var/www/html

# Install PHP dependencies
RUN composer install

# Expose port
EXPOSE 80
