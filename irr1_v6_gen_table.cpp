#include <iostream>
#include <cmath>
using namespace std;

int main() {
	float x = 0.00;
	float y1 = 0.00;
	float y2 = 0.00;
	float y1y2y3 = 0.00;
	float y3 = 0.00;
	float y4 = 0.00;
	float y5 = 0.00;
	//cout << "x y1 y2 y3 y1y2y3 y4 y5 \n";
	for (x = 0.00; x <= 4.00; x += 0.01) {
		cout << x << " ";
		y1 = x;
		cout << y1 << " ";
		y2 = sqrt(x);
		cout << y2 << " ";
		y3 = 0.3*x;
		cout << y3 << " ";
		y1y2y3 = y1 + y2 + y3;
		cout << y1y2y3 << " ";
		y4 = y3;
		cout << y4 << " ";
		y5 = 0.5*y4;
		cout << y5 << " ";
		cout << "\n";
	}
}

