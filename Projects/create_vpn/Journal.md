## Steps taken to create VPN in AWS

1) Establish a customer gateway and provide the public IPv4 address for CML router.
![Screenshot 2025-06-12 094504](https://github.com/user-attachments/assets/3eb8a0f5-a3c3-4b04-b30b-a7147e28e18a)


2) Create a Virtual Private Gateway and attached it to your previously established netwroking VPC.
![Screenshot 2025-06-12 094813](https://github.com/user-attachments/assets/24beac63-8d37-449b-8251-1a5ba618ef6a)


3) Connect the two gateways with a site-to-site VPN connection. Make sure you edit the tunnel options to DH group 14 so that it does not defult to the indecure group 2.
![Screenshot 2025-06-12 100634](https://github.com/user-attachments/assets/23ddd248-2038-4546-b4e0-29e4fc124432)


4) Download the site-to-site VPN connection configuration file for the Cisco router. 
![Screenshot 2025-06-12 101101](https://github.com/user-attachments/assets/27272128-4780-45a6-8db9-7d3455e97e52)


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



