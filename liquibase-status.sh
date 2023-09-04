#!/bin/sh
 
# List undeployed changesets
liquibase --defaultsFile=db/liquibase.properties --url=${CONN} --username=${USERNAME} --password=${PASSWORD} status --verbose 