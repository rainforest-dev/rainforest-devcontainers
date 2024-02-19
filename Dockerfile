FROM mcr.microsoft.com/devcontainers/base:alpine

RUN apk add --no-cache \
        nodejs \
        npm \
        docker-cli \
        docker-cli-buildx \
        docker-cli-compose

RUN npm i -g @devcontainers/cli

