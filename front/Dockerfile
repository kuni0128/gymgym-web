FROM node:14.17-alpine3.10

ENV APP_ROOT /app
WORKDIR $APP_ROOT

COPY package.json .
RUN apk update && npm install -g @vue/cli && npm install
