v10:
	g++ -Wall -o irr1_v10_gen_table irr1_v10_gen_table.cpp
	./irr1_v10_gen_table > irr1_v10_y3_table.csv
	./irr1_v10.plot

v6:
	g++ -Wall -o irr1_v6_gen_table irr1_v6_gen_table.cpp
	./irr1_v6_gen_table > irr1_v6_y3_table.csv
	./irr1_v6.plot
