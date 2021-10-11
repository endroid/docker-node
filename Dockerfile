FROM node:14.18.0-alpine3.14

RUN apk add bash

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

#RUN usermod -u 1000 node

WORKDIR /app

RUN chown -R node:root /app

USER node

#EXPOSE 3000
