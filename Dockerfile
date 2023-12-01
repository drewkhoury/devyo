FROM node:21.2-alpine3.18

LABEL maintainer "Andrew Khoury <drew.khoury@gmail.com>"

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh curl

RUN echo -n "Node: " && node -v && echo -n "npm: " && npm -v
RUN echo "Yeoman Doctor will warn about our npm version being outdated. It is expected and OK."
RUN npm install --global --silent yo

RUN npm install --global yo generator-generator
RUN npm install --global bower

RUN adduser -D -u 501 yeoman && \
  echo "yeoman ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN chown yeoman:root /usr/local/lib/node_modules

ENV HOME /home/yeoman

RUN mkdir /code && chown yeoman:yeoman /code
WORKDIR /code

USER yeoman

