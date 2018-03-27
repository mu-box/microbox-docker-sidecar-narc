FROM ubuntu:16.04

RUN apt-get update -qq && \
    apt-get install -y jq libuv1 && \
    apt-get clean all && \
    rm -rf /var/lib/apt/lists/*

ADD https://s3.amazonaws.com/nanopack.nanobox.io/deb/narc_0.2.2-1_amd64.deb /var/tmp/narc_0.2.2-1_amd64.deb

RUN dpkg -i /var/tmp/narc_0.2.2-1_amd64.deb && rm /var/tmp/narc_0.2.2-1_amd64.deb

RUN mkdir -p /var/podinit

COPY configure /opt/nanobox/hooks/configure

COPY start /opt/nanobox/hooks/start

CMD [ "/opt/nanobox/hooks/start" ]