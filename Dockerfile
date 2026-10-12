FROM node:22.9.0-alpine3.19
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apk update &&\
    apk upgrade --no-cache &&
    apk add --no-cache --upgrade musl
EXPOSE  4000
CMD node graphserver.js
