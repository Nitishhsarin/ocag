#include <iostream>
using namespace std;
int main(){
	int n;
	cin>>n;
	int d;
	cin>>d;
	int arr[n];
	for(int i = 0; i < n; i++){
		cin>>arr[i];
	}
	d = d%n;
	for(int i = 0; i < n; i++){
		cout<<arr[i]<<" ";
	}
	cout<<endl;
	return 0;
}