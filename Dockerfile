FROM node:22.9.0-alpine3.19
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apk update &&\
    apk upgrade --no-cache &&
    apk add --no-cache musl=1.2.4_git20230717-r6 musl-utils=1.2.4_git20230717-r6
    rm -rf /var/cache/apk/*
EXPOSE  4000
CMD node graphserver.js
