FROM node:latest

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

RUN npm install --global @nestjs/cli @vue/cli pm2
RUN usermod -u 1000 node
RUN chown -R node:root /app

USER node

WORKDIR /app

EXPOSE 3000
