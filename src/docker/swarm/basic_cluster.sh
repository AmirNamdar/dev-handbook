# spin nodes up using https://labs.play-with-docker.com/
# Task: https://github.com/BretFisher/udemy-docker-mastery/tree/main/swarm-app-1


# Voting App

# networks
docker network create --driver overlay voting_backend
docker network create --driver overlay voting_frontent

# services 
docker service create -p 80:80 --network voting_frontent --replicas 2 --name voting_frontend_app bretfisher/examplevotingapp_vote

docker service create --network voting_frontent --replicas 2 --name voting_frontend_redis redis:3.2

docker service create --network voting_backend --network voting_frontent --replicas 2 --name voting_backend_app bretfisher/examplevotingapp_worker

docker service create --network voting_backend -e POSTGRES_HOST_AUTH_METHOD=trust --mount type=volume,source=db-data,target=/var/lib/postgresql/data --name voting_database postgres:9.4

docker service create -p 5001:80 --network voting_backend --name voting_results_app bretfisher/examplevotingapp_result


# inspect
#docker node ls
#docker node ps <node>
#docker service ls
#docker service ps <service>