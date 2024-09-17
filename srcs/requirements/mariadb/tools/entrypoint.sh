#!/bin/bash -e

if [ -d "/var/lib/mysql/$MARIADB_DATABASE" ]; then
    echo "Database already exists, skipping preparation"
else
    echo "Preparing default user and database"

    {
        echo "FLUSH PRIVILEGES;"
        echo "CREATE DATABASE IF NOT EXISTS $MARIADB_DATABASE;"
        echo "CREATE USER IF NOT EXISTS $MARIADB_USER@'%' IDENTIFIED BY '$MARIADB_PASSWORD';"
        echo "GRANT ALL ON *.* TO $MARIADB_USER@'%' IDENTIFIED BY '$MARIADB_PASSWORD';"
        echo "FLUSH PRIVILEGES;"
    } | mysqld --bootstrap

    echo "Prepared default user and database"
fi

exec "$@"