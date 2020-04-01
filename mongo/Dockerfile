FROM centos:7

RUN echo -e "\
[mongodb]\n\
name=MongoDB Repository\n\
baseurl=https://repo.mongodb.org/yum/redhat/7Server/mongodb-org/3.0/x86_64/\n\
gpgcheck=0\n\
enabled=1\n" >> /etc/yum.repos.d/mongodb.repo

RUN yum install -y mongodb-org-shell

ADD ./docker/user-db/scripts /tmp/scripts

RUN ls -Al /tmp/scripts
RUN chmod +x /tmp/scripts/mongo_create_insert.sh

RUN /tmp/scripts/mongo_create_insert.sh demo-app-user-db:27017 $MONGO_USER $MONGO_PASS
CMD ["/tmp/scripts/mongo\_create\_insert.sh", "demo-app-user-db:27017"]
#CMD ["./app_linux_amd64", "-port=8080", "-database=mongodb", "-mongo-host=demo-app-user-db:27017"]

