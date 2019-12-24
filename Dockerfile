FROM alpine:latest
Maintainer Itamar Lavender <itamar.lavender@gmail.com>

RUN mkdir -p /usr/local/demo-app
ADD . /usr/local/demo-app/
RUN echo "run sourceguard"
RUN /usr/local/demo-app/sourceguard-cli -src /usr/local/demo-app
