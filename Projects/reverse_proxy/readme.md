## Squid config changes 

 Add the following lines to your Squid configuration to set Windows VM as the Backend Server.

```text
# Basic reverse proxy configuration for squid

# Minimal reverse proxy configuration
http_port 8080 accel vhost

# Define backend server
cache_peer 10.200.123.7 parent 80 0 no-query originserver name=iis-server

# Simple ACL for the host
acl site dstdomain proxy-demo

# Allow all requests to the reverse proxy
http_access allow all

# Route the correct request to the backend
cache_peer_access iis-server allow site
```

Add port 8080 on Squids list of Safe_ports 
```text
acl Safe_ports port 8080        # reverse proxy
```

Uncomment HTTP denial rule 
```text
#http_access deny all
```

## Ensure proxy is able to connect to backend server 

```sh
curl http://10.200.123.7
```

