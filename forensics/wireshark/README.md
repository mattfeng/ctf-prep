# Wireshark and Scapy

## picoCTF 2013: DDoS Detection (85)

```bash
$ tshark -r syn_attack.pcap -e ip.src -T fields -Y 'tcp.dstport==80 && ip.dst==128.237.255.81'
```

```python
from pwn import *
from scapy.all import *

p = rdpcap('./syn_attack.pcap')
sessions = p.sessions()
for s in sessions:
	for pkt in sessions[s]:
		try:
			if pkt[IP].dst == '128.237.255.81' and pkt[TCP].dport == 80:
				print pkt[IP].src
		except:
			pass
```

Solution:

```
120.130.138.152
16.6.74.206
196.132.138.81
94.148.118.202
248.237.9.18
121.168.84.32
21.241.212.197
234.183.31.38
171.128.49.99
71.113.17.64
102.146.88.253
207.137.67.221
65.248.11.247
229.61.253.52
55.53.190.191
241.210.41.46
154.29.81.178
160.116.210.243
132.42.241.177
180.70.211.154
115.99.66.210
51.145.58.158
33.24.97.48
104.220.68.36
132.214.137.24
75.214.206.60
161.147.211.153
63.193.172.89
49.201.237.5
69.232.82.51
```