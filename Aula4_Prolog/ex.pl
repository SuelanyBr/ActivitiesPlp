letra(1,X,[X | _]).
letra(N,X,[_ | Y]):-
	letra(M,X,Y),
	N is M+1.
