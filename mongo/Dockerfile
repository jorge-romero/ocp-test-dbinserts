FROM alpine

ADD ./docker/user-db/scripts /tmp/scripts

RUN echo http://dl-4.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
    apk update && \
    apk add --no-cache mongodb-org-shell 
RUN /tmp/scripts/mongo_create_insert.sh demo-app-user-db:27017 $MONGO_USER $MONGO_PASS

CMD ["./app_linux_amd64", "-port=8080", "-database=mongodb", "-mongo-host=demo-app-user-db:27017"]

