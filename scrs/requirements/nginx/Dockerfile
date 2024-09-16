FROM debian:bullseye

RUN apt-get update -y
RUN apt-get install -y openssl nginx


CMD ["nginx", "-g", "daemon off;"]