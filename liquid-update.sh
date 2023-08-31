#!/bin/sh

# Print update sql to stdout
liquibase --defaultsFile=db/liquibase.properties --url=${CONN} --username=${USERNAME} --password=${PASSWORD} update-sql

# Apply changesets
liquibase --defaultsFile=db/liquibase.properties --url=${CONN} --username=${USERNAME} --password=${PASSWORD} update

