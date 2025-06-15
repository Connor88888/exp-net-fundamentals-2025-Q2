## Set up Squid Reverse Proxy in Ubuntu to allow connection to Windows Server

1) in Ubuntu we will need to install Squid.
```sh
sudo apt update
sudo apt install squid
```

2) We then need to modify the Squid config file to set rules and direct traffic to our VM.
```sh
sudo nano /etc/squid/squid.conf
```

3) Add the following rules to the end of the config file.
![Screenshot 2025-06-15 174209](https://github.com/user-attachments/assets/a9cd10d3-799f-4516-9fc5-c05559108312)


4) Add a rule under Safe_ports to allow traffic on port 8080
```text
acl Safe_ports port 8080        # reverse proxy
```

5) Uncomment the rule the denies all http traffic
```text
#http_access deny all
```

6) After saving the updates in your configuration file you will need to restar Squid for the changes to take effect.
```sh
sudo systemctl stop squid
sudo systemctl start squid
```

7) Ensure that the Squid is now in an active status.
```sh
sudo systemctl status squid 
```

8) You then need to goin into your host devices system files and modify the "hosts" file to allow your device to recognice the IP of the reverse proxy.

9) Finally you can open a web browser on the local device and query the Backend server.

End Result:
![Screenshot 2025-06-15 175340](https://github.com/user-attachments/assets/398c7fee-9e3e-4bcd-8753-fa3d7156dd8c)

On the left we can see Windows VM displaying it's default IIS webpage. The middle panel displays the the Squid Reverse proxy is currently on and active. The right pannel is my host computers web browser that was able to connect to the Backend Server. 
