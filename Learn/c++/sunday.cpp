#include <iostream>
#include <string>
using namespace std;

#define MAX_CHAR 256
#define MAX_LENGTH 1000

void GetNext(string &p, int &m, int next[]){
	for(int i=0; i<MAX_CHAR; i++){
		next[i] = -1;
	}

	for(int i=0; i<m; i++){
		next[p[i]] = i;
	}
}

void Sunday(string &s, int &n, string &p, int &m){
	int next[MAX_CHAR];
	GetNext(p, m, next);
	
	int j;
	int k;
	int i = 0;
	while(i <= n - m){
		j = i;
		k = 0;
		while(j <n && k < m && s[j] == p[k]){
			j++;
			k++;
		}

		if(k == m){
			cout << "found at " << i << endl;
		}

		if(i+m < n){
			i += (m -next[s[i+m]]);
		}else{
			return;
		}
	}
}

int main(){
	string s, p;
	int n, m;
	
	while(cin >> s >> p){
		n = s.size();
		m = p.size();
		Sunday(s, n, p, m);
		cout << endl;
	}

	return 0;
}
