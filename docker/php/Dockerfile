FROM php:7.3-fpm

# Copy composer.lock and composer.json
COPY . /var/www

# Set working directory
WORKDIR /var/www

# Install dependencies
RUN apt-get update && apt-get install -y \
  build-essential \
  libzip-dev \
  libpng-dev \
  libjpeg62-turbo-dev \
  libfreetype6-dev \
  locales \
  zip \
  jpegoptim optipng pngquant gifsicle \
  unzip \
  curl

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install extensions
RUN docker-php-ext-install pdo pdo_mysql mbstring zip exif pcntl
RUN docker-php-ext-configure gd --with-gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/
RUN docker-php-ext-install gd
RUN pecl install -o -f redis \
  &&  rm -rf /tmp/pear \
  &&  docker-php-ext-enable redis

RUN curl --silent --show-error https://getcomposer.org/installer | php \
  && php composer.phar update \
  && php composer.phar install --no-dev --no-scripts

RUN chown -R www-data:www-data \
  /var/www/storage \
  /var/www/bootstrap/cache \
  && chown -R www-data /var/www/public \
  && chmod -R 777 public/documents/ \
  && chmod -R 777 public/trainers/ \
  &&  chmod -R 777 public/ \
  &&  chmod -R 777 storage/

RUN php artisan route:clear \
  && php artisan optimize
RUN php artisan passport:keys
