# Use an official PHP image with Apache
FROM php:8.1-apache

# Install dependencies (e.g., extensions like PDO, MySQL, etc.)
RUN docker-php-ext-install pdo pdo_mysql 

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy the PHP app into the container
COPY . /var/www/html/

# Set the working directory to the Apache web root
WORKDIR /var/www/html/

# Expose port 80
EXPOSE 80
