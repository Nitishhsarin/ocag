#include <iostream>
using namespace std;
int main(){
	int t;
	cin>>t;
	while(t--){
		string str;
		cin>>str;
		int count = 0, a = 0, b = 0;
		char prev = '.';
		for(int i = 0; i < str.length(); i++){
			if(str[i]=='A'){
				a++;
				if(prev=='A'){
					a+=count;
				}
				else{
					prev = 'A';
				}
				count = 0;
			}
			else if(str[i]=='B'){
				b++;
				if(prev=='B'){
					b+=count;
				}
				else{
					prev = 'B';
				}
				count = 0;
			}
			else count++;
		}
		cout<<a<<" "<<b<<endl;
	}
	return 0;
}
