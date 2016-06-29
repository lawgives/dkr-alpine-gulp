FROM mhart/alpine-node:4.4
#FROM mhart/alpine-node:6.2

MAINTAINER Ho-Sheng Hsiao <hosh@legal.io>

# We need python for gyp
RUN apk add --no-cache --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install virtualenv

RUN npm install -g gulp@3.9.1

WORKDIR /usr/src/web

ENV HOME /usr/src/web

CMD ["sh"]
