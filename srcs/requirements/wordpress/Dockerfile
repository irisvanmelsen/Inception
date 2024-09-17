FROM debian:bullseye

RUN apt update && apt upgrade -y

# RUN apt update

RUN apt-get install -y curl php php7.4-fpm php-mysql mariadb-client netcat

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY tools/entrypoint.sh /etc/entrypoint.sh
RUN chmod +x /etc/entrypoint.sh


RUN curl -L https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o wp-cli.phar \
&& chmod +x wp-cli.phar \
&& mv wp-cli.phar /usr/local/bin/wp

RUN mkdir /run/php

EXPOSE 9000

ENTRYPOINT [ "/etc/entrypoint.sh" ]
CMD [ "php-fpm7.4", "-F" ]

# COPY script.sh .
# RUN chmod +x script.sh
# CMD ["./script.sh"]

# FROM debian:bullseye

# RUN apt update && apt upgrade -y && apt install -y php-fpm php-mysqli curl

# COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

# COPY script.sh .

# RUN mkdir /run/php

# RUN chmod 755 script.sh

# CMD [ "php-fpm7.4", "-F" ]