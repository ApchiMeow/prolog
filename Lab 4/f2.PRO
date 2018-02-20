domains
	n = integer
predicates
	add(n, n, n)
	subtract(n, n, n)
	input(n)
	run
clauses
	input(N) :- readint(N).
	add(A, B, R) :- A = 0, R = B, !.
	add(A, B, R) :- A1 = A - 1, B1 = B + 1, add(A1, B1, R).
	subtract(A, B, R) :- A = 0, R = -B, !.
	subtract(A, B, R) :- A1 = A - 1, B1 = B - 1, subtract(A1, B1, R).
	run :- write("Input A: "), input(A), 
		   write("Input B: "), input(B),
		   add(A, B, R1), 
		   subtract(A, B, R2), 
		   write("A + B = ", R1), nl, 
		   write("A - B = ", R2).
goal
	run.