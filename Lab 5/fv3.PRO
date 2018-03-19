domains
	a = symbol
	list = a*

predicates
	twin(list, list)
	run

clauses
	twin([], []).
	twin([H|T], [H,H|Y]) :- twin(T, Y).
	run :-	L = ["a","b","c","d","e"],	
			write(L), nl, 
			twin(L, M), write(M).
goal
	run.