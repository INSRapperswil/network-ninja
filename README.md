# network-ninja - A network TShoot Docker image
A Docker image which contains multiple helpful network troubleshooting packages. We use this image inside GNS3 labs.

Intalled packages are:
```bash
tcpdump htop nmap net-tools curl wget vim iperf3 dnsutils tshark iproute2 iputils-ping isc-dhcp-client apache2
```

Please use one of the following commands to configure the container an IP address:

static: `ip addr add 10.10.10.10/24 dev eth0`
dynamic: `dhclient eth0`

Set default gateway: `ip route add default via 10.10.10.1`
