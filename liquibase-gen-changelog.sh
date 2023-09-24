#!/bin/sh

# load environment variables
source .env

#COMMAND_ARG=$1
#echo "execute command: $COMMAND_ARG"

liquibase --defaultsFile=${LB_DEFAULTS_FILE} --url=${CONN} --username=${USERNAME} --password=${PASSWORD} \
--changelog-file=newgeneratedchangelog.xml generate-changelog