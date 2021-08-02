## Monitor Containers
    list of container processes
        `docker container top <containerName/id>`

    get container config (how the container started):
        `docker container inspect <name/id>`  

    get containers live performance data:
        `docekr container stats [name/id]` 

## View Containers and Logs

    list of containers
        `docker container ls [-a]` 

    list of all container ids:
        `docker container ls –aq`

    logs of container:
        `docker container logs <containerName/id>`

    attach to container logs:
        `docker container logs -f <containerName>`