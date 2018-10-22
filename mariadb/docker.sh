#!/bin/bash
docker run \
--detach \
--name=mariadb \
--env="MYSQL_ROOT_PASSWORD=123456" \
--publish 3306:3306 \
--restart always \
--volume="$PWD/mysql-data":/var/lib/mysql \
mariadb &

docker exec -i  mysql mysql -uroot -p123456 < database.sql;

