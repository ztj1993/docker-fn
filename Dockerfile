FROM fnproject/fn:latest

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk add --no-cache docker \
    && rm -rf /var/cache/apk/*

WORKDIR /srv
VOLUME /srv

ENTRYPOINT ["/app/fn"]
