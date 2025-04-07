FROM php:8.2-apache

# Required to send mail from PHP (for PHPMailer)
RUN apt-get update && apt-get install -y libzip-dev unzip && docker-php-ext-install zip

# Copy all your project files to Apache server root
COPY . /var/www/html/

# Enable Apache Rewrite Module if needed
RUN a2enmod rewrite
