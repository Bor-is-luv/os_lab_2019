gcc parallel_sum.c utils.c sum.c -lpthread -lm -o task5
#./task5 --seed 4 --array_size 12 --pnum 4
./task5 --seed 4 --array_size 12 --threads_num 4