v10:
	g++ -Wall -o irr1_v10_gen_table irr1_v10_gen_table.cpp
	./irr1_v10_gen_table > irr1_v10_y3_table.csv
	./irr1_v10.plot
