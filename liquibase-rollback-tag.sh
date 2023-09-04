#!/bin/sh

TAG=$1

echo "Rollback changes based on tag: $TAG"

# Print update sql to stdout
liquibase rollback --tag=${TAG} --defaultsFile=db/liquibase.properties --url=${CONN} --username=${USERNAME} --password=${PASSWORD}
