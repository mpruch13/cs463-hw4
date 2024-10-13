# mstress_plot.gp

# Set terminal to PNG output
set terminal pngcairo
set output 'mstress_plot_reversed.png'

set title "mstress Average Allocation and Free Times - Reversed Frees"
set xlabel "Size (bytes)"
set ylabel "Time (cycles)"

# Set grid
set grid

# Plot data
plot "data.dat" using 1:2 with linespoints title "Avg Allocation Time", \
     "data_r.dat" using 1:3 with linespoints title "Avg Reversed Free Time"

replot