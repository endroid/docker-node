FROM node:14.18.0-alpine3.14

# Install usermod and usermod node
RUN echo http://dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories
RUN apk add --no-cache shadow
RUN usermod -u 1000 node

# Write configuration to node home
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

# Install some global packages
RUN apk add --no-cache bash git

WORKDIR /app

RUN chown -R 1000 /app

USER node
