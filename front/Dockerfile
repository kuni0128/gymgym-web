FROM node:14.17-alpine3.10

ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

RUN apk update && npm install -g @vue/cli
