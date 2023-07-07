# Intro

## Pre requists

Createa a liquibase schema on your database



## Execute 

### Docker-compose only

Execution on this option, it needs to use the docker-compose-liquibase.yml file.
This file contains the build of the database and the liquibase service.


```bash
# build
docker-compose -f docker-compose-liquibase.yml build

# run
docker-compose -f docker-compose-liquibase.yml up

# remove
docker-compose -f docker-compose-liquibase.yml down
```

With vs code, choose the option to attach into a container running. This option will attach the vs code into the liquibase container, so we can execute the commands.
Any changes will not update on the local folder


### Docker-compose with devcontainer

On this option we only need to build the database image once, and then we can use the devcontainer to execute the commands

```bash
# build
docker-compose -f docker-compose-liquibase-db.yml build

# run
docker-compose -f docker-compose-liquibase-db.yml up

# remove
docker-compose -f docker-compose-liquibase-db.yml down
```

Then run the option on dev cotainer to execute to build the image base on dockerfile. The setup should be done on the devcontainer.json

```json
{
	"name": "liquibase",

	// Sets the run context to one level up instead of the .devcontainer folder.
	"context": "..",

	// Update the 'dockerFile' property if you aren't using the standard 'Dockerfile' filename.
	"dockerFile": "../build/Dockerfile",

	"runArgs": ["--network=host"],

	"containerEnv": {
		"USERNAME": "postgres",
		"PASSWORD": "postgres"
	}
}
```

In this way the container is build and run with the network host, so we can access the database on the localhost.
Any changes will update on the local folder


## References

https://www.liquibase.org/get-started/best-practices
https://containers.dev/
https://docs.docker.com/compose/compose-file/compose-file-v3/
https://github.com/microsoft/vscode-dev-containers/blob/main/container-templates/docker-compose/.devcontainer/docker-compose.yml
https://www.howtogeek.com/devops/how-to-connect-to-localhost-within-a-docker-container/
