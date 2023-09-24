#!/bin/sh

# load environment variables
source .env


liquibase --defaultsFile=${LB_DEFAULTS_FILE} --url=${CONN} --username=${USERNAME} --password=${PASSWORD} \
--output-file=Snapshot.json snapshot --snapshotFormat=json