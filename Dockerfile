FROM ubuntu:22.04

LABEL maintainer="INS OST"

ENV DEBIAN_FRONTEND=noninteractive

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
    apache2 \
    traceroute \
    netcat \
    openssh-server \
    snmp \
    snmpd

CMD [ "/bin/bash" ]
