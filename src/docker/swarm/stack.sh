# Stack uses compose file for production grade swarm
# A Stack manages services, volumes, networks
# A Stack an manage only one swarm

docker stack deploy -c <file> <name>
docker stack ls
docker stack ps <stack name>
docker stack services <stack name>