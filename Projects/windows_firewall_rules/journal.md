## Firewall Rules Testing Locally 

When attempting to test fire wall rules locally, we determined that it is hard to test when you are using localhost because Firewall rules will not block traffic on the same network so we needed to attempt to access the netwrok from a different machine. 

## AWS Windows Server, Servicing Simple Website 

We were able to start a web server using python to serve a single statis page.

The firewall rules block everything that does not have a inbound rule.

We added an inbound rule for port 8000, from our local machine and used curl to be able to connect to the server.

![](./assets/local_side.png)

We also had to remember to open port 800 on our AWS Security Group.

![](./assets/vm_side.png)

