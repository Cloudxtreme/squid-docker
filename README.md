# Squid in a can

Run squid as a caching proxy in a docker container:

```
docker run -d -p 3128:3128 bbania/squid
```

Inside container that you want to use squid for:

```
iptables -t nat -A OUTPUT -p tcp --dport 80 -j DNAT --to-destination SQUID_IP:3128
```

