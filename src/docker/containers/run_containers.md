## Create containers
docker container run [options] <imageName>
## Options:
- delete when done `[--rm]`

- bind ports `[--publish <portOnLocalMachine>:<portOnContainer>]`

- detach from tty `[--detach -d]`

- set a network `[--net] [net-alias] [--name containerName]`

- set container name:  `--name <imageName>`