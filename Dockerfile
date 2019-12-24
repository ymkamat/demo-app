FROM alpine:latest
Maintainer Itamar Lavender <itamar.lavender@gmail.com>

RUN apt-get update && apt-get install -y
ADD . /
