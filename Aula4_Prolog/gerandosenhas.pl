letra(0,X,[X | _]).	
letra(N,X,[_ | Y]):-
	letra(M,X,Y),
	N is M+1.

:- initialization main.

main:-
    read_line_to_codes(user_input, X3),
    string_to_atom(X3,X2),
    atom_number(X2,X),
  
    read_line_to_codes(user_input, Y3),
    string_to_atom(Y3,Y2),
    atom_number(Y2,Y),

    read_line_to_codes(user_input, Z3),
    string_to_atom(Z3,Z2),
    atom_number(Z2,Z),

    read_line_to_codes(user_input, W3),
    string_to_atom(W3,W2),
    atom_number(W2,W),
    
    read_line_to_codes(user_input, PL1),
    string_to_atom(PL1,A),
	atom_chars(A,PALAVRA1),
	
	read_line_to_codes(user_input, PL2),
    string_to_atom(PL2,B),
	atom_chars(B,PALAVRA2),
		
	read_line_to_codes(user_input, PL3),
    string_to_atom(PL3,C),
	atom_chars(C,PALAVRA3),
		
	read_line_to_codes(user_input, PL4),
    string_to_atom(PL4,D),
	atom_chars(D,PALAVRA4),
	
	  
	letra(X,LETRA1,PALAVRA1),
	letra(Y,LETRA2,PALAVRA2),
	letra(Z,LETRA3,PALAVRA3),
	letra(W,LETRA4,PALAVRA4),
	
	
	write(LETRA1),
	write(LETRA2),
	write(LETRA3),
	write(LETRA4),nl,
	halt(0).
		
	
