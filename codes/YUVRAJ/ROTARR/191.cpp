#include <iostream>
using namespace std;
int main(){
	int n;
	cin>>n;
	int arr[n];
	for(int i = 0; i < n; i++){
		cin>>arr[i];
	}
	for(int i = 4; i >= 1; i--){
		cout<<i<<" ";
	}
	cout<<endl;
	return 0;
}