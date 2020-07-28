DOCKER_REPO=dnsdudrla97
HOSTNAME=docker.io

# login
docker login

# docker build and push
docker build -t $DOCKER_REPO/dreamhack_ubuntu_19_10:write-up .
docker tag $DOCKER_REPO/dreamhack_ubuntu_19_10:write-up $HOSTNAME/$DOCKER_REPO/dreamhack_ubuntu_19_10:write-up
docker push $HOSTNAME/$DOCKER_REPO/dreamhack_ubuntu_19_10:write-up