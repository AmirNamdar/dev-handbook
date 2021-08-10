# 1. create secret files with each file containging one secret
# 2. create a service using docker secret to load the files on service creation time
docker service create --name psql --secret psql_user --secret --secret psql_pass -e POSTGRESS_PASSWORD_FILE=/run/secrets/psql_pass -e POSTGRESS_USER_FILE=/run/secrets/psql_user postgres

# - the "_FILE" suffix added to environment variable name is used to tell docker to use locate a file

# once the service started, run bash on any node and locate the file containging the secret inside the container, using the path "/run/secrets/..."


Remove secrets:
docker service update --secret-rm <secret>

note that removing a secret will restart all containers