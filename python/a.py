
import re

text = "1.1.2.3:22  3.2.3.5:55"

ip_pattern = r"((\d{1,3}\.){3}\d{1,3}:\d{1,5})"
ip_addresses = re.findall(ip_pattern, text)

print(ip_addresses)

