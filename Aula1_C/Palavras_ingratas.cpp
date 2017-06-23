#include <iostream>
#include <list>
using namespace std;

int main() {

	list<string> listaDePalavras;
	list<string>::iterator itr = listaDePalavras.begin();
	
	
	while(listaDePalavras.size() < 3){
		string palavra;
		
		cin >> palavra;
	
	//VERIFICA SE A PALAVRA POSSUI VOGAIS
		//PossuiVogais = 0 --> TRUE
		//PossuiVogais = 1 --> FALSE
	
		int possuiVogais = 0;
		for (int i=0; i < palavra.size(); i++) {
			if(palavra[i] == 'a' || palavra[i] == 'e' || palavra[i] == 'i' || palavra[i] == 'o' || palavra[i] == 'u'){
				possuiVogais=1;
				break;
			}
			if(palavra[i] == 'A' || palavra[i] == 'E' || palavra[i] == 'I' || palavra[i] == 'O' || palavra[i] == 'U'){
				possuiVogais=1;
				break;
			}
			
			
		}
		
		if(possuiVogais == 0){
			listaDePalavras.insert(itr, palavra);
		}
			
	}
	
	//IMPRIMIR PALAVRAS
	list<string>::iterator i;
	
	for( i = listaDePalavras.begin(); i != listaDePalavras.end(); ++i)
		cout << *i << endl;
}
