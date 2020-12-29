#!/bin/bash

dotnet tool install --global dotnet-ef
export PATH="$PATH:/root/.dotnet/tools"

set -e
run_cmd="dotnet run --server.urls http://*:80"

##################testohsntosnh#####
until dotnet ef database update; do
>&2 echo "Postgres is starting up"
sleep 1
done

>&2 echo "Postgres is up - executing command"
exec $run_cmd