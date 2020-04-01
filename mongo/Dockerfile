FROM centos:7

RUN echo -e "\
[mongodb]\n\
name=MongoDB Repository\n\
baseurl=https://repo.mongodb.org/yum/redhat/7Server/mongodb-org/3.0/x86_64/\n\
gpgcheck=0\n\
enabled=1\n" >> /etc/yum.repos.d/mongodb.repo

RUN yum install -y mongodb-org-shell

ADD ./docker/user-db/scripts /tmp/scripts
ADD ./startup.sh /tmp/scripts

RUN ls -Al /tmp/scripts
RUN chmod +x /tmp/scripts/mongo_create_insert.sh /tmp/scripts/startup.sh

CMD ["/tmp/scripts/startup.sh", "demo-app-user-db:27017"]
#CMD ["./app_linux_amd64", "-port=8080", "-database=mongodb", "-mongo-host=demo-app-user-db:27017"]

