#!/usr/bin/gnuplot -c
# http://zenonharley.com/gnuplot/cli/2015/06/29/graphing-data-from-the-command-line.html

set terminal svg
set grid
set mytics 10
set mxtics 10
set xrange[0:4]

y1(x)=x
y2(x)=sqrt(x)
y3(x)=0.3*x
y1y2y3(x)=y1(x)+y2(x)+y3(x)
y4(x)=1*y1y2y3(x)
y5(x)=y4(x)/2

set xlabel "x1"
set output 'v6__y1_y2_y3_y1y2y3__x1.svg'
plot y1(x), y2(x), y3(x), y1y2y3(x)

set xlabel "y4(y1y2y3(x1))"
set output 'v6__y4__x1.svg'
plot y4(x)

set xlabel "y5(y4)"
set output 'v6__y5__x1.svg'
plot y5(x)

set xlabel "Встречно-параллельное соединение"
set output 'v6__y4_y5__x1.svg'
plot y4(x), y5(x), y4(x)+y5(x)
