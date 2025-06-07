## State of the Network 

While exploring Packet Tracer I simulated a network that is currnetly attempting to assin a IP Address to PC1.In the image PC1 has sent a broadcast packet through Switch0 to forward to each of the endpoint devices and what we are viewing is each of the endpoint devices receiving said braodcast. 

- PC0 is not accepting the packet bcecause it does not currently have a servie listening on port 67

 - Router0 is also rejecting the packet since it has not active services listening on port 67

 - Server1 does accept the packet on port 67 since we configured the DHCP service to the on position. 

This process will ultimatley allow PC1 to gain an IPv4 address so that it can begin to receive information on the network.

![Screenshot 2025-06-06 220205](https://github.com/user-attachments/assets/3f1bbe35-5582-421c-a955-fc9a4c582d90)
