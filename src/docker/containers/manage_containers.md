## Control Containers

    stop contianer:
        docker container stop <containerId>

    remove container:
        docker container rm

    remove not running containers:
        docker container stop $(docker container ls –aq)

    remove all running containers:
        docker container rm -f $(docker container ls –aq)