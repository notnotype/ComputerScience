from socket import *
from datetime import datetime

client = socket(AF_INET, SOCK_DGRAM)
client.settimeout(1)

for i in range(10):
    msg = 'Ping {} {}'.format(i, datetime.now().strftime("%Y-%m-%M %T"))
    print("send -> : {}".format(msg))
    client.sendto(msg.encode(), ("localhost", 12000))

try:
    recved = client.recvfrom(1024)
    print("recieved data <- : {}:".format(recved.decode()))
except timeout:
    print("Time out!")
