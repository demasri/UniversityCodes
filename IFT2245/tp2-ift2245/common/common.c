#include "common.h"
#include <time.h>
#include <stdlib.h>



/* Returns an integer in the range [0, n).
 *
 * Uses rand(), and so is affected-by/affects the same seed.
 *from: https://stackoverflow.com/questions/822323/how-to-generate-a-random-int-in-c
 */
int randint(int hi_num, int low_num) {
  srand(time(NULL));
  if (hi_num  == -1) {
    return rand();
  }
  else {
    int result = (rand() % (hi_num - low_num)) + low_num;
    return result;
  }
}

ssize_t read_socket(int sockfd, void *buf, size_t obj_sz, int timeout) {
  int ret;
  int len = 0;

  struct pollfd fds[1];
  fds->fd = sockfd;
  fds->events = POLLIN;
  fds->revents = 0;

  do {
    // wait for data or timeout
    ret = poll(fds, 1, timeout);

    if (ret > 0) {
      if (fds->revents & POLLIN) {
          ret = recv(sockfd, (char*)buf + len, obj_sz - len, 0);
          if (ret < 0) {
            // abort connection
            perror("recv()");
            return -1;
          }
          len += ret;
      }
    } else {
      // TCP error or timeout
      if (ret < 0) {
        perror("poll()");
      }
      break;
    }
  } while (ret != 0 && len < obj_sz);
  return ret;
}

char* get_error_message(int err_code) 
{
  switch(err_code){
    case 0 : "Error: Please follow the protocole correctly..."; break;
    case 1 : "Error: Client asking too much ressources..."; break;
  }
}