## Steps taken to create VPN in AWS

1) Establish a customer gateway and provide the public IPv4 address for CML router.
![alt text](image.png)

2) Create a Virtual Private Gateway and attached it to your previously established netwroking VPC.
![alt text](image-1.png)

3) Connect the two gateways with a site-to-site VPN connection. Make sure you edit the tunnel options to DH group 14 so that it does not defult to the indecure group 2.
![alt text](image-2.png)

4) Download the site-to-site VPN connection configuration file for the Cisco router. 
![alt text](image.png)

5) In the configuration file we would need to copy the config to establish our VPN tunnel in CML. (Could not complete due to download issues with CML)

6) In CML terminal run the following command to set config on cisco router. All of this would be available in the downloaded config file.

```sh
conf t
crypto isakmp policy 200
encryption aes 128
authentication pre-share
group 14
lifetime 28800
hash sha
exit

crypto keyring keyring-vpn-048c2d85a7961d87d-0
local-address 192.168.255.205
pre-shared-key address 3.224.157.85 key clmvpn00
exit
```
7) paste in the tunnel interfacee from the configuration file.

8) paste in the boarder gateway config. 

9) After completing steps 5-8 we can verify the VPN tunnel is working by reviewing the tunnel details in AWS.



