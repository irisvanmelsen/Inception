FROM debian:bullseye

RUN apt update && apt upgrade -y
RUN apt-get install -y openssl nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir /etc/nginx/ssl
RUN openssl req \
    -x509 \
    -sha256 \
    -days 365 \
    -nodes \
    -newkey rsa:4096 \
    -keyout /etc/ssl/private/ivan-mel.key \
    -out /etc/ssl/certs/ivan-mel.crt \
    -subj "/C=NL/ST=Noord Holland/L=Amsterdam/O=Codam/OU=Iris/CN=ivan-mel"


# COPY default /etc/nginx/sites-available/.


RUN mkdir -p /run/nginx

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]