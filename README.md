# network-ninja - A network TShoot Docker Image
A Docker image which contains multiple helpful network troubleshooting packages. We use this image inside GNS3 labs.

Installed packages:
```bash
tcpdump htop nmap net-tools curl wget vim iperf3 dnsutils tshark iproute2 iputils-ping isc-dhcp-client apache2 traceroute netcat
```

## IP Address Configuration
Please use one of the following commands to configure the container an IP address:

static: `ip addr add 10.10.10.10/24 dev eth0`
dynamic: `dhclient eth0`

Set default gateway: `ip route add default via 10.10.10.1`

## Simulate Services
So simulate a running service on a specific port (e.g. HTTP or DNS):
```bash
# For HTTP(80/TCP):
nc -l -p 80
# For DNS (53/UDP):
nc -u -l -p 53
```
**Please note**: `nc -l` is a blocking command. You can exit by using `Ctrl+c`.

After you started the `nc` server instance, use the following commands to connect to this instance and write some text. This text should now be printed to the console STDOUT on the server side.

To access services on specific ports:
```bash
# For HTTP(80/TCP):
nc <ip-of-server> 80
# For DNS (53/UDP):
nc -u <ip-of-server> 53
```
