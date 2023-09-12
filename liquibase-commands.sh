#!/bin/sh

# load environment variables
source .env

COMMAND_ARG=$1
TAG=$2

echo "execute command: $COMMAND_ARG"
echo "tag: $TAG"

if [ "${COMMAND_ARG}" = "hist" ]; then

echo "execute liquibase history"
liquibase --defaultsFile=${LB_DEFAULTS_FILE} --url=${CONN} --username=${USERNAME} --password=${PASSWORD} history 

elif [ "${COMMAND_ARG}" = "status" ]; then

echo "execute liquibase status"
liquibase --defaultsFile=${LB_DEFAULTS_FILE} --url=${CONN} --username=${USERNAME} --password=${PASSWORD} status --verbose 

elif [ "${COMMAND_ARG}" = "validate" ]; then

echo "execute liquibase validate"
liquibase --defaultsFile=${LB_DEFAULTS_FILE} --url=${CONN} --username=${USERNAME} --password=${PASSWORD} validate

elif [ "${COMMAND_ARG}" = "update-sql" ]; then

echo "execute liquibase update-sql"
liquibase --defaultsFile=${LB_DEFAULTS_FILE} --url=${CONN} --username=${USERNAME} --password=${PASSWORD} update-sql

elif [ "${COMMAND_ARG}" = "update" ]; then

echo "execute liquibase update"
liquibase --defaultsFile=${LB_DEFAULTS_FILE} --url=${CONN} --username=${USERNAME} --password=${PASSWORD} update

elif [ "${COMMAND_ARG}" = "tag-default" ]; then

echo "execute liquibase tag (default)"
liquibase --defaultsFile=${LB_DEFAULTS_FILE} --url=${CONN} --username=${USERNAME} --password=${PASSWORD} tag --tag=$(date +"%Y-%m-%d_%T")

else

echo "input argument is not valid"
echo "execute liquibase-commands.sh "
echo "or type liquibase --help"

fi




