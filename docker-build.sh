#!/bin/bash

set -e

PRIVATE_REGISTRY=registry.ridesharemarket.com:5000

CONTAINER_OWNER=ride-share-market

CONTAINER_NAME=rsm-iojs

VERSION=$1

if [ -z "$1" ]
  then
    echo "==> No semver number supplied."
    echo "==> Usage example: $0 0.0.1"
    echo "==> Existing images"
    sudo docker images | grep ${CONTAINER_NAME}
    exit 1
fi

sudo docker build -t ${CONTAINER_OWNER}/${CONTAINER_NAME}:${VERSION} .

sudo docker images | grep ${CONTAINER_NAME}

sudo docker tag ${CONTAINER_OWNER}/${CONTAINER_NAME}:${VERSION} ${PRIVATE_REGISTRY}/${CONTAINER_OWNER}/${CONTAINER_NAME}:${VERSION}

sudo docker push ${PRIVATE_REGISTRY}/${CONTAINER_OWNER}/${CONTAINER_NAME}:${VERSION}
