#include <iostream>

using namespace std;


int ehPrimo(int num){
	int aux=1; 
	
	for ( int i=2; i < num; i++ ){ 
		if (num%i == 0){ 
			aux = 0; 
			break; 
		} 
	}
	return (aux); 
}

int main() {
	int number;
	cin >> number;
	
	for ( int i=1; i < number; i++ ){
		if(ehPrimo(i) == 1 && ehPrimo(i+2) == 1) {
			cout << i << " " << i+2 << endl;
		}
			
		
	}
	
}
