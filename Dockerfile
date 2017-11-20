FROM ubuntu:16.04

LABEL maintainer="docker@ins.hsr.ch"

RUN apt-get update && apt-get install -y \
    tcpdump \
    htop \
    nmap \
    net-tools \
    curl \
    wget \
    vim \
    iperf3 \
    dnsutils \
    tshark \
    iproute2 \
    iputils-ping \
    isc-dhcp-client \
    apache2

CMD [ "/bin/bash" ]
