#!/bin/sh

set -e

npm update --location=global @nestjs/cli @vue/cli pm2 | true

node
