#!/bin/sh

source .env

bash liquibase-commands.sh hist

bash liquibase-commands.sh status

bash liquibase-commands.sh update-sql

bash liquibase-commands.sh update

echo "Liquibase run all done"

