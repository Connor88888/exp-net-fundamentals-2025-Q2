## Firewall Rules Testing Locally 

When attempting to test fire wall rules locally, we determined that it is hard to test when you are using localhost because Firewall rules will not block traffic on the same network so we needed to attempt to access the netwrok from a different machine. 

## AWS Windows Server, Servicing Simple Website 

We were able to start a web server using python to serve a single statis page.

The firewall rules block everything that does not have a inbound rule.

We added an inbound rule for port 8000, from our local machine and used curl to be able to connect to the server.

![Screenshot 2025-06-07 151409](https://github.com/user-attachments/assets/f82dece5-d7ee-49a8-a240-3f279d0d1208)


We also had to remember to open port 800 on our AWS Security Group.

![Screenshot 2025-06-07 151312](https://github.com/user-attachments/assets/760c42d6-a362-4efe-9c49-2d41dd76af87)

