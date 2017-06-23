#include <iostream>
#include <list>
using namespace std;

int inputInt(){
	int num;
	
	cin >> num;
	
	if(num > 100){
		cout << "Erro: Numero maior que 100 \n Digite novamente: ";
		num = inputInt();
	}
	
	return num;
}


int main(){
	
	int number = inputInt();
	cin.ignore();
	
	string nameBook;
		
	list<string> books;
	list<string>::iterator itr = books.begin();
	
	for(int i=0; i < number; i++){
		getline(cin,nameBook);
		books.insert(itr,nameBook);
	}
	
	books.sort();
	
	list<string>::iterator i;
	for( i = books.begin(); i != books.end(); ++i)
		cout << *i << endl;
	
}