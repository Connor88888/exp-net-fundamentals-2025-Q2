## How to create PCAP in terminal

```sh
tshark -i <wi-fi> -f "tcp port 443" -w https_capture.pcap
```

This command will create a pcap file called "https_capture.pcap" the only captures HTTPS traffic. 

to stop the packet capture you would just do ^C.