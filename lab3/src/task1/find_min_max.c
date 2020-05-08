#include "find_min_max.h"

#include <limits.h>

struct MinMax GetMinMax(int *array, unsigned int begin, unsigned int end) {
  struct MinMax min_max;
  min_max.min = array[begin+4];
  min_max.max = array[begin+4];

  unsigned int i;
  for (i = begin + 1 +4; i < end+4; i++) {
    if (array[i] < min_max.min)
      min_max.min = array[i];
    if (array[i] > min_max.max)
      min_max.max = array[i];
  }
  return min_max;

}
