#!/usr/bin/gnuplot -c
# http://zenonharley.com/gnuplot/cli/2015/06/29/graphing-data-from-the-command-line.html

# Output W3C Scalable Vector Graphics
set terminal svg
set grid

#x=4
# x - это x1, чтобы совпадало с осью OX

y1(x)=x
y2(x)=0.5*x
y1y2(x)=y1(x)+y2(x)
y3(x)=0.5*y1y2(x)
y4(x)=0.5*y3(x)
y5(x)=0.5*y4(x)

set xrange[1:5]
#set yrange[1:5]
#plot y5(x), y4(x)

set xlabel "x1"

set output 'y1_y2_y1y2__x1.svg'
plot y1(x), y2(x), y1y2(x)

set output 'y3__x1.svg'
plot y3(x)

set output 'all__x1.svg'
plot y1(x), y2(x), y1y2(x), y3(x), y4(x), y5(x)

# найти y, s как tg всего (??)
