FROM node:10.7.0-alpine
MAINTAINER Ho-Sheng Hsiao <hosh@legal.io>

# We need python for gyp
RUN apk add --no-cache --update \
    git \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install virtualenv

RUN yarn global add gulp@4.0.0
RUN yarn global add bower@1.8.2
RUN yarn global add nucleus-styleguide
RUN yarn global add node-gyp

WORKDIR /usr/src/web

ENV HOME /usr/src/web

CMD ["sh"]
