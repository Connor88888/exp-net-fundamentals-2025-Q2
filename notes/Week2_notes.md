## Live Stream 

Watched as netwroking enginners worked on crating a diagram of a metropolitan area network based on our instructors home town. They discusseed the design reasoning behind their decision to create a datacenter in an old church. 

## Lessons Learned 
- Installed Cisco Modeling Lab to complete Tim's lab 
- Created a VPN connection between my host device and my Networking bootcamp VPC.
- 


## CML notes
As opposed to Packet tracer CML does not emulate Cisco device but rather it creates real devices running through a webbrowser GUI. 

Tim is going to send out a .yaml file to connect to the lab we are going to complete for homework. 

You can pull in nodes to CML and once your layout it complete you can then run them in real time. 

In Tim's example the router is used to assign IP Addresses using DHCP since we did not establish a server to do so.

The Lab can be configured to connect to the internet so that you can test your machines connectivity.

CML bridges itself through your home network.(ex. if your tracert to 8.8.8.8 you will only get a responce from cml and you host device since your home router does not have your cml in it's route table to return packetts.)

CML uses NAT to connect to your home router and create a bridge.

In sample labs we could also use the IOSvL2 Feature Tests lab and stay within the free tier.

PCAP's can be captured in CML buy selecting the connection. 

When attempting to install CML I encorterned multiple errors and could not recreate the lab in the instructor video. 

## VPN notes 

In aws we are grating a customer gateway for our VPC.

Since I was unable to launch CML successfully I modeled my VPN the same as Tim did in the video but won't be ablee to test the connection. 

Created a customer gateway listing my host devices IPv4 address

Then created a Virtual Private Gateway.

Once creted we then need to attached the VPG to a VPC instance. 

We then need to create a site to site VPN connection to connect the customer gateway and the virtual private gateway. 

After the sit-to-site VPN connection was created we downloaded the configuration file to pull the command sets to input in CML.

After configuring the VPN in CML we validated the connection status in AWS.

We then enable route propagation in AWS to to allow our VPC to learn routes from the VGW.

## Trafficflow with Wireshark notes 

Tims started by restarting the DHCP reverse for his box in CML.

He then created a packet capture between the switch and workstation to watch the packets as the send a request to process the new DHCP request.

Downloaded packet capture to his device.

Opened WireShark and uploaded the PCAP file from CML.

Analyzed DHCP frames to view the granular packet details in the bottom left panel.

WireShark can filter the packets and Tim shows how to filter by DHCP.

Since the PCAP shows the initiation of DHCP we are able to review each of the DORA steps used to request DHCP services. 

DORA: Discover, Offer, Request, Acknowledge.

The hexadecial code and machine readable code is displayed in the bottom right panel. 

We can also use wireshark to start a live capture with a filter set before it captures. (eg. you can set the filter to icmp to start the capture to only capture ping packets)



## NAT Basics notes 

## Load Balancer Overview Notes

## Recerse Proxy notes

## Forward Proxy

## HA Proxy Notes
