FROM mhart/alpine-node:4.4
#FROM mhart/alpine-node:6.2

MAINTAINER Ho-Sheng Hsiao <hosh@legal.io>

# We need python for gyp
RUN apk add --no-cache --update \
    git \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install virtualenv

RUN npm install -g gulp@3.9.1
RUN npm install -g bower@1.8.0
RUN npm install -g nucleus-styleguide

WORKDIR /usr/src/web

ENV HOME /usr/src/web

CMD ["sh"]
