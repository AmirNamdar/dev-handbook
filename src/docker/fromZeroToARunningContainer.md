# Steps
# EASY
1. pull and image
`docker pull mongo`

2. run it
`docker run --name mongodb mongo`

# Less easy
1. Get a Dockerfile ready
2. Build an image with:
 `docker build -t <new image name> .`
3. See the newly created image with:
 `docker image ls`
4. Run a conatiner based on the new image with:
`docker container run --rm --name <contianerName>`