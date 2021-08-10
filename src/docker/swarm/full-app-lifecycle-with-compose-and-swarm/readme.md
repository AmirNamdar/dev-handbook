## Order of compose files initialization:
1. docker-compose.yml
2. docker-compose-override.yml

## Compose file roles
### docker-compose.yml
Used to set deaults across all environments
Outlines the services required for the app work in any environment

### docker-compose-override.yml
Expands on the basic docker-compose file
I will use it for local env setup
The file is read automatically by docker, no need to specify -f flag
In our example specifies:
- ports
- volumes, to map file changes in the host to the container to prevent docker-compose down for every change

### docker-compose-prod.yml
Generate prod compose file: docker-compose -f docker-compose.yml -f docker-compose.test.yml config > merged-compose-file-prod.yml 
Run the file: docker stack deploy -c merged-compose-file-prod.yml mySite

Includes:
- All needed bind mounts
- All needed secrets are loaded using the "external" method to support swarm stack
- May includes "deploy" config for swarm stack
- May ommit the "build" directive if the file is deployed using swarm stack

### docker-compose-test.yml
Loaded with: docker-compose -f docker-compose.yml -f docker-compose.test.yml up
notice the `config` directive, it tells docker to merge the 2 yml files. this is needed since in prod we don't use docker-compose cli tool to load the compose files.

Assuming:
- Test env doesn't require data presistance, so bind mounts for persistance are omitted from this config file
- Test will need to mount some sample data, so we bind a sample data dir to the data dir in the container
- Test env will require some extra steps before it runs, a seprate config file gives us the opertunity to execute them only in test mode
