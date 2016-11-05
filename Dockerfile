FROM ubuntu:xenial
MAINTAINER Manuel Hutter <manuel@vshn.ch>

VOLUME /work
WORKDIR /work

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]

RUN chmod +x /entrypoint.sh && \
    echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/debbuild && \
    apt-get update && \
    apt-get install -y git git-buildpackage devscripts debhelper
