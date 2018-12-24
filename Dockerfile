FROM node:10.14.2-alpine

RUN apk add --no-cache bash
RUN apk add --update --no-cache openssh sshpass
