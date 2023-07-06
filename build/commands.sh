#!/bin/sh

# History of deployments
liquibase --defaultsFile=db/liquibase.properties --url=${CONN} --username=${USERNAME} --password=${PASSWORD} history 
 
# List undeployed changesets
liquibase --defaultsFile=db/liquibase.properties --url=${CONN} --username=${USERNAME} --password=${PASSWORD} status --verbose 

# Check changelogs for errors
liquibase --defaultsFile=db/liquibase.properties --url=${CONN} --username=${USERNAME} --password=${PASSWORD} validate

# Print update sql to stdout
liquibase --defaultsFile=db/liquibase.properties --url=${CONN} --username=${USERNAME} --password=${PASSWORD} update-sql

# Apply changesets
liquibase --defaultsFile=db/liquibase.properties --url=${CONN} --username=${USERNAME} --password=${PASSWORD} update

# Add tag
liquibase --defaultsFile=db/liquibase.properties --url=${CONN} --username=${USERNAME} --password=${PASSWORD} tag --tag=$(date +"%Y-%m-%d_%T")