FROM mhart/alpine-node:6.2

RUN npm install -g gulp@3.9.1

WORKDIR /usr/src/web/build-assets

ENV HOME /usr/src/web

CMD ["bash"]
