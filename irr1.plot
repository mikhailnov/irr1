#!/usr/bin/gnuplot -c
# http://zenonharley.com/gnuplot/cli/2015/06/29/graphing-data-from-the-command-line.html

# Output W3C Scalable Vector Graphics
set terminal svg
set grid

#x=4

set xrange[1:5]

y1(x)=x
y2(x)=0.5*x
y1y2(x)=y1(x)+y2(x)
y3(x)=0.5*y1y2(x)
y4(x)=0.5*y3(x)
y5(x)=0.5*y4(x)

plot for [x=1:5] y5(x)
