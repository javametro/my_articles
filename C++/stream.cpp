#include <string>
#include <iostream>
using namespace std;

int main(){
	
	cout << "Hello" << endl;
	
	string s("Hello");
	s[3] = 't';
	
	ofstream of("MyLog.txt");
	of << "Experience is the mother of wisdom." << endl;
	of << 234 << endl;
	of << 2.3 << endl;
	
	of << bitset<8>(14) << endl;
	of << complex<int>(2, 3) << endl;
	
	return 0;
}