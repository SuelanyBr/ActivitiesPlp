pertence([X|_],1,X).
pertence([_|T],N,X):- 
	pertence(T,N1,X),
	N is N1+1.

:- initialization main.

main:- 
    read_line_to_codes(user_input, PL1),
    string_to_atom(PL1,A),
	atom_chars(A,LETRA),
	
	read_line_to_codes(user_input, PL2),
    string_to_atom(PL2,B),
	atom_chars(B,FRASE),
	
	pertence(FRASE,NUM,LETRA),
	
	write(NUM),nl,
	halt(0).
