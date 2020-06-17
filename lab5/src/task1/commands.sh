gcc -c mutex.c
gcc mutex.o -o with_mutex -lpthread
./with_mutex
