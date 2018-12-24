FROM node:10.14.2

RUN apk add --no-cache bash
RUN apk add --update --no-cache openssh sshpass
