FROM node

RUN mkdir -p /usr/local/src/shadowsocks && npm install shadowsocks -g

COPY ./config.json /usr/local/src/shadowsocks/config.json

WORKDIR /usr/local/src/shadowsocks

CMD [ "ssserver" ]