#gcc find_min_max.c utils.c parallel_min_max.c -o task1
./parallel_min_max --seed 4 --array_size 12 --pnum 4 --timeout 10
