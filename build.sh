DOCKER_REPO=dnsdudrla97
HOSTNAME=docker.io

# login
docker login

# docker build and push
docker build -t $DOCKER_REPO/ubuntu19.10:write-up .
docker tag $DOCKER_REPO/ubuntu19.10:write-up $HOSTNAME/$DOCKER_REPO/ubuntu19.10:write-up
docker push $HOSTNAME/$DOCKER_REPO/ubuntu19.10:write-up