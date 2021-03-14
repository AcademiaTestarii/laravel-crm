FROM php:7.4-fpm

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
RUN docker-php-ext-install pdo pdo_mysql zip exif pcntl
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    && docker-php-ext-configure gd --with-jpeg=/usr/include/ --with-freetype=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

RUN curl --silent --show-error https://getcomposer.org/installer | php \
  && php composer.phar install --no-dev --no-scripts \
  && php composer.phar dump-autoload


RUN chown -R www-data:www-data \
  /var/www/storage \
  /var/www/bootstrap/cache \
  && chown -R www-data /var/www/public \
  && chmod -R 777 public/documents/ \
  && chmod -R 777 public/trainers/ \
  && chmod -R 777 public/slider/ \
  && chmod -R 777 public/partners/ \
  && chmod -R 777 public/classes/ \
  && chmod -R 777 public/news/ \
  &&  chmod -R 777 public/ \
  && chown -R www-data:www-data storage/ \
  &&  chmod -R 777 storage/

RUN php artisan route:clear \
  && php artisan optimize \
  && php artisan migrate \
  && php artisan passport:keys
