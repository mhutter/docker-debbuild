FROM ubuntu:focal
MAINTAINER Manuel Hutter <manuel@hutter.io>

VOLUME /work
WORKDIR /work

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bin/bash"]

RUN chmod +x /docker-entrypoint.sh && \
    echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/debbuild && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        apt-file build-essential curl debhelper devscripts dput \
        fakeroot gcc gem2deb git git-buildpackage libdistro-info-perl vim \
        python3-setuptools && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -c Builder -m -U builder

USER builder
