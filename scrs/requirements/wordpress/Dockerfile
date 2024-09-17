FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y \
	php-fpm

# RUN apt update

# RUN apt install -y php7.4=7.4.33-1+deb11u5 \
#                    php7.4-mysql=7.4.33-1+deb11u5 \
#                    php7.4-fpm=7.4.33-1+deb11u5 \
#                    curl=7.74.0-1.3+deb11u11

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

# RUN curl -L https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o wp-cli.phar \
# && chmod +x wp-cli.phar \
# && mv wp-cli.phar /usr/local/bin/wp

RUN mkdir /run/php

EXPOSE 9000

CMD ["php-fpm7.4", "-F"]