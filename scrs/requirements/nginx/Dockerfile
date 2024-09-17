FROM debian:bullseye

RUN apt-get update -y
RUN apt-get install -y openssl nginx

# COPY conf/nginx.conf /etc/nginx/nginx.conf

COPY default /etc/nginx/sites-available/.

CMD ["nginx", "-g", "daemon off;"]