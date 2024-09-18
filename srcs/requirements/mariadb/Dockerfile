FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y \
	mariadb-server

COPY tools/entrypoint.sh /etc/entrypoint.sh
RUN chown mysql:root /etc/entrypoint.sh && chmod +x /etc/entrypoint.sh

COPY tools/healthcheck.sh /etc/healthcheck.sh
RUN chown mysql:root /etc/healthcheck.sh && chmod +x /etc/healthcheck.sh

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chown -R mysql:root /etc/mysql/mariadb.conf.d

RUN mkdir -p /var/run/mysqld; chown -R mysql:root /var/run/mysqld

EXPOSE 3306

ENTRYPOINT ["/etc/entrypoint.sh" ]

CMD ["mysqld_safe"]