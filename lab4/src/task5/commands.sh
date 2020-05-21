#gcc parallel_sum.c utils.c sum.c -lpthread -lm -o task5
./parallel_sum --seed 4 --array_size 12 --threads_num 4