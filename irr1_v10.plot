#!/usr/bin/gnuplot -c
# http://zenonharley.com/gnuplot/cli/2015/06/29/graphing-data-from-the-command-line.html

set terminal svg
set grid
set mytics 10
set mxtics 10
set xrange[0:]

y1(x)=x
y2(x)=0.5*x
y1y2(x)=y1(x)+y2(x)
y3_v1(x)=0.5*y1y2(x)
y3_v2(x)=1*y1y2(x)-1
y4_v1(x)=0.5*y3_v1(x)
y4_v2(x)=0.5*y3_v2(x)
y5_v1(x)=0.5*y4_v1(x)
y5_v2(x)=0.5*y4_v2(x)

set xlabel "x1"
set output 'y1_y2_y1y2__x1.svg'
plot y1(x), y2(x), y1y2(x)

set xlabel "y3(y1y2(x1))"
set output 'y3__x1.svg'
# resulting values from y1_y2_y1y2__x1
set xrange[0:]
# https://superuser.com/a/238128
plot x <= 1 ? y3_v1(x) : y3_v2(x)

set xlabel "y4(y3)"
set output 'y4__x1.svg'
set xrange[0:]
plot x <= 1 ? y4_v1(x) : y4_v2(x)

set xlabel "y5(y4)"
set output 'y5__x1.svg'
set xrange[0:]
plot x <= 1 ? y5_v1(x) : y5_v2(x)

set xlabel "Встречно-параллельное соединение 1//2+3+4=5 и x -> x1"
set output 'y4_y5__x1.svg'
set xrange[0:]
plot x <= 1 ? y4_v1(x) : y4_v2(x), x <= 1 ? y5_v1(x) : y5_v2(x), x <= 1 ? y4_v1(x)+y5_v1(x) : y4_v2(x)+y5_v2(x)
