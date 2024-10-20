#!/bin/bash -e
PRJ_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/..
cd ${PRJ_DIR}

# CHANGE THIS {DOCKER_IMAGE_NAME}.
DOCKER_IMAGE_NAME="spj3-ui"
VERSION=$(grep -Po '"version": "\K.*?(?=")' ${PRJ_DIR}/package.json)

VUE_APP_API_HOST="${VUE_APP_API_HOST:-https://rag.helenfit.com:31244/v1}"
VUE_APP_DEV_MODE="${VUE_APP_DEV_MODE:-false}"

repo_and_tag="${DOCKER_IMAGE_NAME}:${VERSION}"

echo "Building... (version: ${repo_and_tag})"

docker build \
    --network=host \
    --build-arg VUE_APP_API_HOST=${VUE_APP_API_HOST} \
    --build-arg VUE_APP_DEV_MODE=${VUE_APP_DEV_MODE} \
    --force-rm \
    --tag $repo_and_tag \
    -f Dockerfile \
    .
