#include <stdio.h>
#include <unistd.h>

int main(void)
{
    execl("sequential_min_max"," ","3","12",NULL);
    return 0;
}
