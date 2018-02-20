domains
	n = integer
predicates
	catul(n, n, n)
	input(n)
	run
clauses
	input(N) :- readint(N).
	catul(A, B, 0) :- A < B, !.
	catul(A, B, R) :- A1 = A - B, catul(A1, B, R1), R = R1 + 1.
	run :- write("Input A: "), input(A), 
		   write("Input B: "), input(B),
		   catul(A, B, R), 
		   write("catul(A / B) = ", R), nl. 
goal
	run.