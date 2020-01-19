FROM debian:stretch
LABEL maintainer="Cryptoncoin Developers <dev@cryptoncoin.org>"
LABEL description="Dockerised CryptoncoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
