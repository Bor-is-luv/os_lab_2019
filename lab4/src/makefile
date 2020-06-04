CC=gcc
CFLAGS=-I.

all : task1/parallel_min_max task2/zombie task3/process_memory task5/parallel_sum

task1/parallel_min_max : task1/utils.o task1/find_min_max.o task1/utils.h task1/find_min_max.h
	$(CC) -o task1/parallel_min_max task1/utils.o task1/find_min_max.o task1/parallel_min_max.c $(CFLAGS)

task5/parallel_sum : task5/utils.o task5/libsum.so task5/utils.h task5/sum.h 
	$(CC) -o task5/parallel_sum task5/utils.o task5/parallel_sum.c -lpthread -lm -lsum $(CFLAGS)

task2/zombie : 
	$(CC) -o task2/zombie task2/zombie.c $(CFLAGS)    
	
ptask3/rocess_memory : 
	$(CC) -o task3/process_memory task3/process_memory.c $(CFLAGS)    

task1/utils.o : task1/utils.h
	$(CC) -o task1/utils.o -c task1/utils.c $(CFLAGS)

task5/utils.o : task5/utils.h
	$(CC) -o task5/utils.o -c task5/utils.c $(CFLAGS)

task1/find_min_max.o : task1/utils.h task1/find_min_max.h
	$(CC) -o task1/find_min_max.o -c task1/find_min_max.c $(CFLAGS)

task5/libsum.so: task5/sum.o
	$(CC) -shared -o task5/libsum.so task5/sum.o $(CFLAGS) 
	sudo mv task5/libsum.so /usr/lib
	sudo chmod 755 /usr/lib/libsum.so

task5/sum.o : task5/sum.h
	$(CC) -fPIC -o task5/sum.o -c task5/sum.c	$(CFLAGS)


clean :
	rm task1/utils.o task1/find_min_max.o task5/sum.o task5/utils.o
