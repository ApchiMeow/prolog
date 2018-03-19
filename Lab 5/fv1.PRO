domains
	a = symbol
	list = a*

predicates
	find(a, list)
	input(a)
	run

clauses
	input(N) :- readln(N).
	find(_, []) :- write("not find"), !.
	find(H, [H|_]) :- write("find"), !.
	find(H, [_|T]):- find(H, T).
	run :-	L = ["a","b","c","d","e"],	
			write(L), nl,
			write("Input element: "), 
			input(N),
			find(N, L).
goal
	run.