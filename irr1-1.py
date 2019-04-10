#!/usr/bin/env python3
# Зависимости:
# sudo apt install python3-sympy / sudo urpmi python3-sympy

# https://jenyay.net/Matplotlib/Plot1D
# https://ru.stackoverflow.com/a/630685
# http://www.inp.nsk.su/~grozin/python/python7.html 

from sympy import *
s = [0 for s in range(0,6)]

# Вариант 10
def count_var10():
	
	x, x1, x2, x3, x4, x5 = symbols('x, x1, x2, x3, x4, x5')

	s[1] = diff(x)
	print('Чувствительность 1: ', s[1])

	s[2] = diff(0.5*x)
	print('Чувствительность 2: ', s[2])

	s1j2 = s[1] + s[2]
	print('Общая чувствительность последовательно соединенных элементов 1 и 2 (s[1]+s[2]): ', s1j2)

	if (x3v >= 0) and (x3v <= 2):
		print('Формула расчета чувствительности элемента №3: s = 0.5*x')
		s[3] = diff(0.5*x)
	elif (x3v > 2) and (x3v <= 4):
		print('Формула расчета чувствительности элемента №3: s = x-1')
		s[3] = diff(x-1)
	else:
		print('Значение переменной x4 за пределами допустимых значений!')
		exit(1)
	print('x3 = ', x3v)
	print('Чувствительность 3: ', s[3])

	s[4] = diff(0.5*x)
	print('Чувствительность 4: ', s[4])

	s[5] = diff(0.5*x)
	print('Чувствительность 5: ', s[5])
	
	print('Соединение 5-1 встречно-параллельное, отрицательное')
	#s5j1 = s[4]/(s[4]+s[5])
	s5j1 = (s[1]*s[2]*s[3]*s[4])/(s[4]+s[5])
	print('Общая чувствительность 5-1 (s[1]*s[2]*s[3]*s[4])/(s[4]+s[5]): ', s5j1)
	
	print('')

for x3v in range(0,5):
	count_var10()