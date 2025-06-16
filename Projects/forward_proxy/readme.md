## Check status of Squid 

```sh
sudo systemctl status squid 
```

## Review active Squid Config

```sh
cat /etc/squid/squid.conf | grep -v '^#' | grep -v '^$'
```

