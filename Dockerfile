FROM alpine:latest
Maintainer Itamar Lavender <itamar.lavender@gmail.com>

#RUN mkdir -p /usr/local/demo-app
ADD . /usr/local/demo-app/
#RUN chmod +x /usr/local/demo-app/sourceguard-cli
#RUN /usr/local/demo-app/sourceguard-cli -src /usr/local/demo-app

RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

RUN echo "run sourceguard"
RUN /usr/local/demo-app/sourceguard-cli -src /usr/local/demo-app/
