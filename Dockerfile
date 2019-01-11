FROM node:10.14.2-stretch
RUN echo "ipv6" >> /etc/modules

RUN curl -o apk-tools-static-2.6.8-r1.apk http://dl-cdn.alpinelinux.org/alpine/v3.5/main/x86_64/apk-tools-static-2.6.9-r0.apk \
&& tar -zxvf apk-tools-static-2.6.8-r1.apk \
&& cd sbin \
&& sudo ./apk.static -X http://dl-cdn.alpinelinux.org/alpine/latest-stable/main -U --allow-untrusted --initdb add apk-tools-static \
&& sudo apk.static update \
&& sudo ./apk.static -X http://dl-cdn.alpinelinux.org/alpine/latest-stable/main -U --allow-untrusted add apk-tools \
&& sudo apk update

RUN /bin/sh -c "apk add --no-cache bash"
RUN /bin/sh -c "apk add --update --no-cache openssh sshpass"
