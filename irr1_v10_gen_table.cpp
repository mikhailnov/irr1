#include <iostream>
#include <cmath>
using namespace std;

int main() {
	float x = 0.00;
	float y1 = 0.00;
	float y2 = 0.00;
	float y1y2 = 0.00;
	float y3 = 0.00;
	float y4 = 0.00;
	float y5 = 0.00;
	float y4y5 = 0.00;
	//cout << "x y1 y2 y1y2 y3 y4 y5 y4y5\n";
	for (x = 0.00; x <= 4.00; x += 0.01) {
		cout << x << " ";
		y1 = x;
		cout << y1 << " ";
		y2 = 0.5*x;
		cout << y2 << " ";
		y1y2 = y1+y2;
		cout << y1y2 << " ";
		if (x <= 2) {
			y3 = 0.5*x;
		} else {
			y3 = x-1;
		}
		cout << y3 << " ";
		y4 = 0.5*y3;
		cout << y4 << " ";
		y5 = 0.5*y4;
		cout << y5 << " ";
		y4y5 = y4+y5;
		cout << y4y5 << " ";
		cout << "\n";
	}
}

