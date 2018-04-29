FROM python

RUN apt-get install -y supervisor

RUN mkdir -p /var/log/supervisor && pip install git+https://github.com/shadowsocks/shadowsocks.git@master

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

WORKDIR /usr/local/src/shadowsocks

CMD ["/usr/bin/supervisord"]