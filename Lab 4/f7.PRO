domains
	n = integer
predicates
	rest(n, n, n)
	input(n)
	run
clauses
	input(N) :- readint(N).
	rest(A, B, R) :- A < B, R = A, !.
	rest(A, B, R) :- B < A, A1 = A - B, rest(A1, B, R).
	run :- write("Input A: "), input(A), 
		   write("Input B: "), input(B),
		   rest(A, B, R), 
		   write("rest(A / B) = ", R), nl. 
goal
	run.