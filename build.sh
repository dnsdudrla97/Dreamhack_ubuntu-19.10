DOCKER_REPO=dnsdudrla97
HOSTNAME=docker.io

# login
docker login

# docker build and push
docker build -t $DOCKER_REPO/ubuntu19.10:dreamhack .
docker tag $DOCKER_REPO/ubuntu19.10:dreamhack $HOSTNAME/$DOCKER_REPO/ubuntu19.10:dreamhack
docker push $HOSTNAME/$DOCKER_REPO/ubuntu19.10:dreamhack