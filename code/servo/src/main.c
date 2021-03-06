/**
 * @file   main.c
 *
 * @brief  Using serial console to allow user to enable
 *         disable, and control position of servo motor
 *
 * @date   Mar.6th,2018
 * @author David Dong <haochend@andrew.cmu.edu>
 */

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <349libc.h>
#include <string.h>

/**
 * @brief User main function.
 *
 */
int main(void) {
  char buf[100], command[20];
  int size, arg1, arg2;
  printf("Commands\n");
  printf("  enable <ch>: Enable servo channel\n");
  printf("  disable <ch>: Disable servo channel\n");
  printf("  set <ch> <angle>: Set servo angle\n");
  while(1) {
    size = read(STDIN_FILENO, buf, 100);
    buf[size] = '\0';
    arg1 = 0;
    arg2 = 0;
    sscanf(buf, "%s %d %d", command, &arg1, &arg2);
    
    if (strcmp(command, "enable") == 0) {
      if (arg1 != 1 && arg1 != 2) printf("Invalid Command\n");
      else servo_enable(arg1, 1);
    } else if (strcmp(command, "disable") == 0) {
      if (arg1 != 1 && arg1 != 2) printf("Invalid Command\n");
      else servo_enable(arg1, 0);
    } else if (strcmp(command, "set") == 0) {
      if (arg1 != 1 && arg1 != 2) printf("Invalid Command\n");
      else if (arg2 < 0 || arg2 > 180) printf("Invalid Command\n");
      else servo_set(arg1, arg2);
    } else printf("Invalid Command\n");
  }
  return 0;
}
