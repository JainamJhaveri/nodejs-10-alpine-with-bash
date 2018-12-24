FROM node:10.14.2-stretch
RUN echo "ipv6" >> /etc/modules

RUN apk add --no-cache bash
RUN apk add --update --no-cache openssh sshpass
