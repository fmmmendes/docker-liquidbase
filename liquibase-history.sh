#!/bin/sh

# History of deployments
liquibase --defaultsFile=db/liquibase.properties --url=${CONN} --username=${USERNAME} --password=${PASSWORD} history 
 