#include "types.h"
#include "user.h"
#include "date.h"

int
main(int argc, char *argv[])
{
  struct rtcdate r;

  if (date(&r)) {
    printf(2, "date failed\n");
    exit();
  }

  // linux implementation is at https://github.com/coreutils/coreutils/blob/master/src/date.c
  // but probably I just go simple
  printf(1, "s:%d m:%d, h:%d, d:%d, m:%d, y:%d\n",
    r.second, r.minute, r.hour, r.day, r.month, r.year);

  exit();
}
