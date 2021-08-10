#docker secret stores the secret encrypted all the way through and only exposes the secret value to the containers

#create a secret with a file
#file can be stored in secure cloud
docker secret create my_secret <fileNameThatContainsOnlyTheSecret>

#create a secret with stdin
#not secret
echo "this string is secret" | docker secret create my_secret -

# view secrets
docker secret ls
docker secret inspect <secret>
