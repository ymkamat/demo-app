FROM alpine:latest
Maintainer Itamar Lavender <itamar.lavender@gmail.com>

RUN mkdir -p /usr/local/demo-app
ADD sourceguard-cli /usr/local/demo-app/
RUN chmod +x /usr/local/demo-app/sourceguard-cli
RUN echo "run sourceguard"
RUN /usr/local/demo-app/sourceguard-cli -src /usr/local/demo-app
