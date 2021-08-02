### Work Inside A Container
- **Options**

    attach to running container: `docker attach <containerName>`

    - at container creation time: attach to container shell right after creating it

    `docker container run --publish 80:80 -it --name amirsContainer nginx <command>`

    ```
    docker container run --publish 80:80 -it --name amirsContainer nginx bash
    ```

    - for running detached container

    `docker container exec -it <containerName> <command>`

    ```
    docker container exec -it amirsContainer bash
    ```