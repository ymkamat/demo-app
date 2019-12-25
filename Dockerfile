FROM alpine:latest
Maintainer Itamar Lavender <itamar.lavender@gmail.com>

RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2
<<<<<<< HEAD
=======

ARG SG_CLIENT_ID
ARG SG_SECRET_KEY

>>>>>>> 6327792fc24ec9d0ae6345550c1714fbc8bc3bec
RUN mkdir -p /usr/local/demo-app

ADD . /usr/local/demo-app/
RUN chmod +x /usr/local/demo-app/sourceguard-cli
<<<<<<< HEAD


RUN echo "Run SourceGuard"
RUN /usr/local/demo-app/sourceguard-cli -src /usr/local/demo-app/
=======

RUN echo "SourceGuard Demo"
RUN /usr/local/demo-app/sourceguard-cli -src /usr/local/demo-app/ -x test.sh
>>>>>>> 6327792fc24ec9d0ae6345550c1714fbc8bc3bec
