## Setup for Squid Forward Proxy 

1) in Ubuntu we will need to install Squid.
```sh
sudo apt update
sudo apt install squid
```

2) We then need to review the current active configuration for Squid
```sh
cat /etc/squid/squid.conf | grep -v '^#' | grep -v '^$'
```

3) On our client VM we will need to go into the Settings and under the Network and Internet options we will set the Proxy server with the IP for our Ubuntu Squid peoxy.

4) In the Ubuntu box we can use tail to review access attempts for the proxy.

```sh
sudo tail -f /var/log/squid/access.log
```

5) We can verify that the Windows client cannot connect out to the internet and view the live logs side by side. 

![Screenshot 2025-06-15 194054](https://github.com/user-attachments/assets/8ffe10c5-cc33-4dc0-8122-4fcb5017dcf3)


You can see that the Windows client opened GitHub in the rightside panel and on the left the Squid proxy logs are showing live report of the same iqnuiry. 
