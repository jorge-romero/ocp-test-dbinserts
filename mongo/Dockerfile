FROM alpine

ADD ./docker/user-db/scripts /tmp/scripts

RUN echo http://dl-3.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
    apk upgrade --update && \
    apk add --no-cache mongodb 
RUN /tmp/scripts/mongo_create_insert.sh demo-app-user-db:27017 $MONGO_USER $MONGO_PASS

CMD ["./app_linux_amd64", "-port=8080", "-database=mongodb", "-mongo-host=demo-app-user-db:27017"]

