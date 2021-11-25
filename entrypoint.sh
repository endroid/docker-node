#!/bin/sh

set -e

npm update --global @nestjs/cli @vue/cli pm2 | true

node
