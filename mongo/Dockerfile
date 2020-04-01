FROM centos


ADD ./docker/user-db/scripts /tmp/scripts

#RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/main' >> /etc/apk/repositories
#RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/community' >> /etc/apk/repositories
#RUN apk update
#RUN apk add mongodb-tools=3.4.4-r0
#    apk add --no-cache mongodb 

RUN yum install -y mongodb-org-shell-4.2.5


RUN ls -Al /tmp/scripts
RUN chmod +x /tmp/scripts/mongo_create_insert.sh

RUN /tmp/scripts/mongo_create_insert.sh demo-app-user-db:27017 $MONGO_USER $MONGO_PASS

CMD ["./app_linux_amd64", "-port=8080", "-database=mongodb", "-mongo-host=demo-app-user-db:27017"]

