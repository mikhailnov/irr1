#include <iostream>
#include <cmath>
using namespace std;

void echo(string arg_str, float arg) {
	//string arg_str = std::to_string(arg);
	cout << arg_str << ": " << arg << endl;
}

int count() {
	float P_max_z = 0.05;
	//float R = 14;
	float R = 14;
	float r0 = 3;
	float l = 3;
	//float h = 0.04;
	float h = 0.04;
	float H = 1.5;
	//float E=100*10^3;
	float E=220*10^3;
	float μ = 0.3;
	float K1 = 1;
	float K2 = (pow(H, 2)/pow(h, 2))*(3/2)+1;
	echo("K2", K2);
	float α = sqrt(K1*K2);
	echo("α", α);
	float ρ = r0/R;
	echo ("ρ", ρ);
	// по таблице
	//float a1 = 1;
	float a1 = 1;
	//float b1 = 1.13;
	float b1 = 1.13;
	//
	float a = (2*(3+α)*(1+α))/(3*K1*(1-(pow(μ, 2)/pow(α, 2))));
	echo("a", a);
	float b = ((32*K1)/(pow(α, 2)-9)) * (1/6 - (3-μ)/((α-μ)*(α+3)));
	echo("b", b);
	float W_max = 0.2;
	float P_max_p = (E*h/pow(R, 4))*(a1*a*pow(h, 2)*W_max + b1*b*pow(W_max, 3));
	echo("P_max_p", P_max_p);
	float delta = abs(P_max_p - P_max_z)/P_max_z;
	echo("delta", delta);
}

int main() {
	count();
}
