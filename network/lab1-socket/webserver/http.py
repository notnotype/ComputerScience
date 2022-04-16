# import socket module
from socket import *


serverSocket = socket(AF_INET, SOCK_STREAM)
# Prepare a sever socket
#Fill in start
#Fill in end
while True:
    # Establish the connection
    server = socket(AF_INET, SOCK_STREAM)
    server.bind(('', 8080))
    server.listen(1)
    print('Ready to serve...')
    connectionSocket, addr = server.accept()
    try:
        message = connectionSocket.recv(1024)
        filename = message.split()[1]
        f = open(filename[1:], 'rb')
        outputdata = f.read()
        connectionSocket.sendall("HTTP/1.1 200 OK\r\n\r\n".encode())
        connectionSocket.sendall(outputdata)
        connectionSocket.close()
    except IOError:
        connectionSocket.sendall("HTTP/1.1 404 Not Found\r\n\r\n".encode())
    server.close()
