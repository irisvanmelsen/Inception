FROM debian:bullseye

RUN apt-get update -y
RUN apt install -y wget curl php php-cgi php-msql php-fpm php-pdo php-cli php-gd php-mbstring

CMD ["php-fpm8.2", "-F"]