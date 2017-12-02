#include <iostream>
#include<climits>
using namespace std;
int main(){
	int t;
	cin>>t;
	while(t--){
		int n, r;
		cin>>n>>r;
		int l = 0, h = INT_MAX, count = 0;
		bool flag = true;
		while(count<n){
			count++;
			int temp;
			cin>>temp;
			if(count==n){
				if(temp!=r) flag = false;
			}
			else{
				if(temp==r || temp >= h || temp <= l){
					flag = false;
					break;
				}
				if(temp<h && temp > r) h = temp;
				else if(temp > l && temp < r) l = temp;
			}
		}
		if(flag) cout<<"YES"<<endl;
		else cout<<"NO"<<endl;
	}
	return 0;
}
