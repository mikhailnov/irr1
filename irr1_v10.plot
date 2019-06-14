#!/usr/bin/gnuplot -c

set terminal svg
set grid
set mytics 10
set mxtics 10
set xrange[0:4]
#set logscale x
set datafile separator " "

set xlabel "x1"
set output 'y1_y2_y1y2__x1.svg'
# x y1 y2 y1y2 y3 y4 y5 y4y5
# Column 0 is line number, 1 is first column
plot "irr1_v10_y3_table.csv" using 1:2 title 'y1(x1)' with lines, \
     "irr1_v10_y3_table.csv" using 1:3 title 'y2(x1)' with lines, \
     "irr1_v10_y3_table.csv" using 1:4 title 'y1(x1)+y2(x1)' with lines

set xlabel "y3(y1y2(x1))"
set output 'y3__x1.svg'
plot "irr1_v10_y3_table.csv" using 1:5 title 'y3(x1)' with lines

set xlabel "y4(x1)"
set output 'y4__x1.svg'
plot "irr1_v10_y3_table.csv" using 1:6 title 'y4(x1)' with lines

set xlabel "y5(y4)"
set output 'y5__x1.svg'
plot "irr1_v10_y3_table.csv" using 1:7 title 'y5(x1)' with lines

set xlabel "Встречно-параллельное соединение 1//2+3+4=5 и x -> x1"
set output 'y4_y5__x1.svg'
plot "irr1_v10_y3_table.csv" using 1:8 title 'y4(x1)+y5(x1)' with lines, \
     "irr1_v10_y3_table.csv" using 1:6 title 'y4(x1)' with lines, \
     "irr1_v10_y3_table.csv" using 1:7 title 'y5(x1)' with lines
