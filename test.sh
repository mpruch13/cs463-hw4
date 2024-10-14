#!/bin/bash

n=1000
i=3
s_max=8000
s_inc=64

rm data.dat
rm data_r.dat

# Run without reversed frees
for ((s = 8; s <= $s_max; s+=$s_inc))
do
    ./mstress -s $s -n $n -i $i | awk -f mean.awk >> data.dat
done

# Run with reversed frees
for ((s = 8; s <= $s_max; s+=$s_inc))
do
    ./mstress -s $s -n $n -i $i -r | awk -f mean.awk >> data_r.dat
done

gnuplot plot_normal.gp
gnuplot plot_reversed.gp
gnuplot plot_all.gp
