from socket import *

msg = "\r\n I love computer networks!"
endmsg = "\r\n.\r\n"

# Choose a mail server (e.g. Google mail server) and call it mailserver 
mailserver = 'smtp.163.com'  
# Create socket called client and establish a TCP connection with mailserver
client = socket(AF_INET, SOCK_STREAM)
client.connect((mailserver, 25))

recved = client.recv(1024)
print(recved.decode())

# Send HELO command and print server response.
command = 'HELO Alice\r\n'
print(f'{command} -> {mailserver}')
client.send(command.encode())
recved = client.recv(1024)
print(recved.decode())

# auth login
print(f'{command} -> {mailserver}')
client.send('auth login'.encode())
recved = client.recv(1024)
print(recved.decode())

command = 'bm90bm90eXBl'
print(f'{command} -> {mailserver}')
client.send(command.encode())
recved = client.recv(1024)
print(recved.decode())

command = 'Q1VTQVdCU1JQSUpHTlFZQg=='
print(f'{command} -> {mailserver}')
client.send(command.encode())
recved = client.recv(1024)
print(recved.decode())

# Send MAIL FROM command and print server response.
# Fill in start

# Fill in end

# Send RCPT TO command and print server response.
# Fill in start

# Fill in end

# Send DATA command and print server response.
# Fill in start

# Fill in end

# Send message data.
# Fill in start

# Fill in end 

# Message ends with a single period.
# Fill in start

# Fill in end

# Send QUIT command and get server response.
# Fill in start

# Fill in end
 
