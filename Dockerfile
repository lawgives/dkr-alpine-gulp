FROM mhart/alpine-node:6.2

MAINTAINER Cauê Alves <cauealveseng@gmail.com>

RUN npm install -g gulp@3.9.1

WORKDIR /usr/src/web

ENV HOME /usr/src/web

CMD ["sh"]
