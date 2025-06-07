## Developer Enviornment 

![Alt text](exp-net-fundamentals-2025-Q2/Projects/windows-networking/assets/proof-of-cloud-env.png)

Description of Cloud Enviorment: I use my windows 11 VM that was launched as an EC2 instance in Microsoft Azure. In the screenshot you will see my host computer displaying my EC2 instance with the public IPv4 address of 3.149.107.99. This is consistant with the public IP Addresses listed in my VM desktop and when I ran ipconfig in the command terminal. 

## Ping 

```text
ping 8.8.8.8
```

Description: command checks connectivity to goodles DHCP server

## Tracert

```text
tracert www.google.com 
```

Description: Traces packet route to www.google.com by displaying each hop and the IPv4 Address of each hop. 

## Netstat

```text
netstat 
```

Description: Provides the current status of active network connections

## Route 

```text
route
```

Description: Allows you to display and modify the current routing table for your device.

## IPConfig

```text
ipconfig
```

Description: Allows you to display and modify your devices IP stack. 