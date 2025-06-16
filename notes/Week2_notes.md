## Live Stream 

Watched as netwroking enginners worked on crating a diagram of a metropolitan area network based on our instructors home town. They discusseed the design reasoning behind their decision to create a datacenter in an old church. 

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

NAT: Network Address Translation

Origanally invented to preserve the amuont of IPv4 addresses in use. 

This is how your public facing IPv4 address is generated.

NAT obscures your local network since all of your devices would share the same public facing IP. (Not a form of security)

Static NAT is a 1:1 mapping of a source and destination. It will also assis in directing traffic between local ip addresses opperating on serperate netwroks. 

NAT Pool is used direct traffic between multiple ISP's. When traffic is sent NAT pool it can use a pool of IP's to chose for translation. Used to extend the amount of possabilites of the NAT device. In cases of cloud useage it is use to also produce multiple public IP's. Used in large enterprise scnarios. 

PAT/NAT Overload used port address transalation to track connections. Translates all internated addresses to 1 public IP. Most commonly used for home internet. 

Tim then went to the CML lab and reviewed current NAT directions on the router.

reviewed access list to determine what ip is being NAT'd to tell the router not to NAT the private network.

used packet capture to view a ping packet before and after it passes through the NAT. 

He then switched to WireShark to review an ICPM packet capture.

His ping is double NAT'd since it is doing NAT in the CML router and then sending the traffic through his actual home router. 

Unable to complete lab outlined in video due to issues downloanding CML.

## Load Balancer Overview Notes

Load Balancing is used to ensure redundancy and availablity of a service. It can be used to spread traffic between servers to ensure any one of them is not overloaded. 

DNS load balancing can be programmed to spread DNS requests between web servers. 

TLS termination on load balancer is a cerificate based encryption that can be used to send traffic to an HA proxy for decryption and then forwarded to web servers. 

Proxies also work as laod balancers too and can assit with the management of the TLS encryption. 

TLS termination on the server is used to place the decryption strain on the web servers rather than your HA proxy. This make it difficult for the HA server to make the best routing decision since the traffic in encrypted. 

TLS termination on load balancer with re-encrytion to server is used send traffic to a HA proxy using TLS encryption, allowing the HA server to decrypt the payload to make a more informed routing decision, and then re-encrypting the traffic to ensure it is secure on it's was to the web server. 

Application load balancing makes decisions on load balancing based on the application layer information. Most commonly usedd in the cloud. (Website URL)

Netwrok load balancing is only using network layer information to make load balancing decisions. (Ports/IP address)

Launchd Unbuntu box to begin installing container lab.

## Reverse Proxy notes

Stated by setting up a reverse proxy in our ubuntu box using squid proxy to connect to our windows box. 

Modified the /etc/squid/dquid.conf configuration to establish a reverse proxy to the windows IP.

Cluade was use to create configuration settings for squid to set a reverse proxy to our windows VM box.

In our windows VM we ensured that an IIS server was sestablsihed to allow web access.

When attempting to add the proxy-demo ip to my host file for my local device I got an error due to not having the appropriate permissions to edit the hosts file.

## Forward Proxy

can provide connectivity to a network for the hosts behind it.

usually used for security or contect filtering.

Review VPC disgram to understand how  a private subnet would use a proxy to connect out to the internet.

The proxy can also be configured to cache web content. 

Squid proxy is typically located near the edge of the network. 

## HA Proxy Notes
