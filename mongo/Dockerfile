FROM alpine

ADD ./docker/user-db/scripts /tmp/scripts

RUN chmod +x /sbin/dosu && \
    echo http://dl-4.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
    apk add --no-cache mongodb \
    /tmp/scripts/mongo_create_insert.sh demo-app-user-db:27017 $MONGO_USER $MONGO_PASS

CMD ["./app_linux_amd64", "-port=8080", "-database=mongodb", "-mongo-host=demo-app-user-db:27017"]

