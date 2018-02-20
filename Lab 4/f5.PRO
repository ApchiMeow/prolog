domains
	n = integer
predicates
	nod_eu(n, n, n)
	input(n)
	run
clauses
	input(N) :- readint(N).
	nod_eu(A, B, R) :- A = B, R = A.
	nod_eu(A, B, R) :- A > B, C = A - B, nod_eu(B, C, R).
	nod_eu(A, B, R) :- A < B, C = B - A, nod_eu(B, C, R).
	run :- write("Input A: "), input(A), 
		   write("Input B: "), input(B),
		   nod_eu(A, B, R), 
		   write("nod(A and B) = ", R), nl. 
goal
	run.