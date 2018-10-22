#!/bin/bash
docker run \
--detach \
--name=postgres \
--env="POSTGRES_PASSWORD=123456" \
--publish 5432:5432 \
--restart always \
--volume="$PWD/pgdata":/var/lib/postgresql/data \
postgres:latest;
