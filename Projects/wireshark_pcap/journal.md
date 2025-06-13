## Create a PCAP file in command line to review in WireShark

1) Download Wireshark and ensure tshark is installed.

2) Run packet capture command in windows terminal.
```sh
tshark -i <wi-fi> -f "tcp port 443" -w https_capture.pcap
```
3) Upload the captured pcap file to wire shark for analysis.

![alt text](<Screenshot 2025-06-12 212125.png>)

In ther image above image we can see that the packet capture was able to filter my Wi-fi traffic to just HTTPS traffic from port 443. The packet I am reviewing is showing the TCP source port 53907 and destination port 443. This tells me that the packet is intaking traffic from a web page that was assigned port 53907 to send packets from and my devices is receiving that packet on pot 443.

## Preform live capture from wire shark

```text 
After launching WireShark the landing page will display your devices current adaptors the are running. I just chose my Wi-fi adaptor for this example
```

```test
 Wire shark will not display all current traffic running and it will do so in real time. to test this we can run ping command to 8.8.8.8
 ```

```text
After seeing 4 ICMP protocol packets get captured in WireShark I was able to stop the capture to ensure that the packets source IP matched my public facing IP and the destination IP was 8.8.8.8.
```
![alt text](<Screenshot 2025-06-12 215615.png>)