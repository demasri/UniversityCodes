#include <stdio.h>

int main(int agrc, char **argv) {
  int a = 10;
  int b = 20;
  if(a != b) {
    return a+b;
  }
  printf("%d", a);
  printf("%d", b);
}
