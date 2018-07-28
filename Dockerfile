FROM buildpack-deps:stretch

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y  \
         build-essential \
         cmake \
         libboost-all-dev\
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
