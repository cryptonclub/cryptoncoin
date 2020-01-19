#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-cryptoncoinpay/cryptoncoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/cryptoncoind docker/bin/
cp $BUILD_DIR/src/cryptoncoin-cli docker/bin/
cp $BUILD_DIR/src/cryptoncoin-tx docker/bin/
strip docker/bin/cryptoncoind
strip docker/bin/cryptoncoin-cli
strip docker/bin/cryptoncoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
