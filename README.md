# Intro

## Pre requists

On databse create a schema liquibase

## Docker Compose

```bash
docker-compose up
# or
docker-compose up -d
```

```bash
docker-compose stop
```

```bash
docker-compose down
```


## Execute liquibase

The following command is to build the image again with new content


```bash
docker-compose -f docker-compose-liquibase.yml build liquibase
```
The following command it will run the service and execute the commands on the commands.sh

```bash
docker-compose -f docker-compose-liquibase.yml up
```

```bash
docker-compose -f docker-compose-liquibase.yml down
```

## References

https://www.liquibase.org/get-started/best-practices
https://containers.dev/
https://docs.docker.com/compose/compose-file/compose-file-v3/
https://github.com/microsoft/vscode-dev-containers/blob/main/container-templates/docker-compose/.devcontainer/docker-compose.yml
https://www.howtogeek.com/devops/how-to-connect-to-localhost-within-a-docker-container/
