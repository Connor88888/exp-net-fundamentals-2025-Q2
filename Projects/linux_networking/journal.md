## Resolver 

![Screenshot 2025-06-07 173720](https://github.com/user-attachments/assets/8f4ed7b2-5471-4ea9-90ef-0f7c28ed4def)


We worked to update our Ubuntu DNS server mannually by modifying the /etc/systemd/resolved.conf file in linux using the "sudo vi" command. This practice can be commonly used to increase preformance and speed by connecting to a DNS server that has faster reasponce times. It could even be used to connect to a specified DNS servers that have built in security features such as filtering known malicious domains.

## Wget vs Curl 

Wget and Curl are CLI tools used to transfer data over the internet. Wget is mainly used to download files and websites with a simpler output. On the otherhand Curl is a more versitile tool that can use multiple protocols and assists with web developement. 

![Screenshot 2025-06-07 180039](https://github.com/user-attachments/assets/36a11dc5-504d-4676-b014-c0666968e25c)

```text
When you run curl www.google.com, your computer first converts the domain name to an IP address using DNS, then establishes a TCP connection to that IP address, sends an HTTP request, and finally displays the raw HTML response from Google's server in your terminal.
```

![Screenshot 2025-06-07 175926](https://github.com/user-attachments/assets/219d8243-a6b0-4be1-b93d-e87124a606b8)

```text
When you run wget www.google.com, your computer performs the same DNS resolution and HTTP request as curl, but instead of displaying the content in the terminal, it downloads the webpage and saves it as a file named index.html in your current directory.
```