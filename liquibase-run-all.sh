#!/bin/sh

source .env

bash liquibase-commands.sh hist

bash liquibase-commands.sh status

echo "Liquibase run all done"

