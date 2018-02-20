domains
	n = integer
predicates
	nod(n, n, n)
	input(n)
	run
clauses
	input(N) :- readint(N).
	nod(A, B, R) :- B = 0, R = A.
	nod(A, B, R) :- C = A mod B, nod(B, C, R).
	run :- write("Input A: "), input(A), 
		   write("Input B: "), input(B),
		   nod(A, B, R), 
		   write("nod(A and B) = ", R), nl. 
goal
	run.