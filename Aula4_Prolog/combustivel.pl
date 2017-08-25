:- initialization main.

main:-
    read_line_to_codes(user_input,X3),
    string_to_atom(X3,X2),
    atom_number(X2,X), 
    read_line_to_codes(user_input,Y3),
    string_to_atom(Y3,Y2),
    atom_number(Y2,Y),
    read_line_to_codes(user_input,Z3),
    string_to_atom(Z3,Z2),
    atom_number(Z2,Z),
    A is X * Z,
    G is Y * Z,
    V is Z * 0.7,
	teste(A,V,G),
    halt(0).

teste(A,V,G):-
	(A < V ->
		writeln(G),nl,
		fail
	; A >= V ->
		writeln(A),nl
	)
