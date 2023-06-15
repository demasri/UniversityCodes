#include <stdio.h> 
#include <sys/socket.h> 
#include <stdlib.h> 
#include <netinet/in.h> 
#include <string.h> 
#define PORT 2018
   
int main(int argc, char const *argv[]) 
{   
  int client_socket = socket(AF_INET, SOCK_STREAM, 0);
  struct sockaddr_in addr;

  addr.sin_family = AF_INET;
  addr.sin_port = htons(2018);
  addr.sin_addr.s_addr = htons(INADDR_LOOPBACK);

  char* helo = "0 0 0";

  connect(client_socket, &addr, sizeof(addr));

  send(client_socket, helo, strlen(helo), 0);  
} 