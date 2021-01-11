#!/bin/bash -e

# echo "choose a workspace for your local db:" 

workspace="local"

docker run \
-d \
-p 5432:5432 \
--rm \
-e POSTGRES_HOST_AUTH_METHOD=trust \
-e POSTGRES_PASSWORD=notneeded \
-v psql_$workspace:/var/lib/postgresql/data \
--name psql_${workspace} \
postgres


# -e POSTGRES_DB=${workspace}_db \

# workspace=$(openssl rand -hex 4)
# echo export DATABASE_URL="postgres://postgres@localhost:5432/${workspace}_db"



