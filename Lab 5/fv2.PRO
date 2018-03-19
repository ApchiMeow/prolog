domains
	a = symbol
	list = a*
	p = integer

predicates
	find(p, list)
	input(p)
	run

clauses
	input(N) :- readint(N).
	find(_, []) :- write("not find"), !.
	find(1, [H|_]) :- write(H), !.
	find(P, [_|T]):- P1 = P - 1, find(P1, T).
	run :-	L = ["a","b","c","d","e"],	
			write(L), nl, 	
			write("Input number: "), 
			input(N),
			find(N, L).
goal
	run.