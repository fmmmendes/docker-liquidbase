#!/bin/sh

CHANGELOGFILE=$1

echo "Update changes based on changelog file: $CHANGELOGFILE"

# Print update sql to stdout
liquibase --defaultsFile=db/liquibase.properties --changelog-file=${CHANGELOGFILE} --url=${CONN} --username=${USERNAME} --password=${PASSWORD} update-sql

# Apply changesets
liquibase --defaultsFile=db/liquibase.properties --changelog-file=${CHANGELOGFILE} --url=${CONN} --username=${USERNAME} --password=${PASSWORD} update

# Add tag
liquibase --defaultsFile=db/liquibase.properties --changelog-file=${CHANGELOGFILE} --url=${CONN} --username=${USERNAME} --password=${PASSWORD} tag --tag="$CHANGELOGFILE"