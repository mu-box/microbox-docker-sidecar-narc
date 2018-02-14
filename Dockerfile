FROM ubuntu:16.04

RUN apt-get update -qq && \
    apt-get install -y jq libuv1 && \
    apt-get clean all && \
    rm -rf /var/lib/apt/lists/*

ADD https://d1qjolj82nwh57.cloudfront.net/deb/narc_0.2.2-1_amd64.deb /var/tmp/narc_0.2.2-1_amd64.deb

RUN dpkg -i /var/tmp/narc_0.2.2-1_amd64.deb && rm /var/tmp/narc_0.2.2-1_amd64.deb

RUN mkdir -p /var/podinit

COPY configure /usr/bin/configure

COPY start /usr/bin/start

CMD [ "/usr/bin/start" ]