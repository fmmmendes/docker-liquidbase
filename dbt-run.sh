#!/bin/sh

dbt run --project-dir=dbt_liquibase --profiles-dir=dbt_profiles --profile=dbt_liquibase
