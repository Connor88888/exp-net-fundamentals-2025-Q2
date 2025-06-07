## use dig to current DNS when connecting to Google.com

```sh
dig google.com
```

## Modify /etc/systemd/resolved.conf file to change DNS server

```sh
 sudo vi /etc/systemd/resolved.conf
```
> under "Resolve" uncomment "DNS=" and add 1.1.1.1

> exit by pressing ESC and using ":wq"

## Restart  config file for changes to take place 

```sh
 sudo systemct1 restart systemd-resolved
```

## Verify that the changes were implemented 

```sh
resolvectl status
```

