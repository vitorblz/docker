#!/bin/bash
docker stop postgres;
docker rm postgres;

docker stop phppgadmin;
docker rm phppgadmin;

mkdir postgres-data;

docker run \
--detach \
--name=postgres \
--env="POSTGRES_PASSWORD=123456" \
--publish 5432:5432 \
--volume="$PWD/postgres-data":/var/lib/postgresql/data \
postgres:9.4;

docker run --name='phppgadmin' -d \
  --publish=8000:80 \
  --env="PHP_PG_ADMIN_SERVER_HOST=postgres" \
  --link postgres \
dockage/phppgadmin:latest;

