FROM alpine:3.11

RUN apk add --no-cache docker

ADD https://github.com/fnproject/cli/releases/download/0.6.1/fn_alpine /usr/local/bin/fn

RUN chmod +x /usr/local/bin/fn

WORKDIR /srv
VOLUME /srv
ENTRYPOINT ["/usr/local/bin/fn"]
