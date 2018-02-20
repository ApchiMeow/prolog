domains
	n = integer
predicates
	produs(n, n, n)
	input(n)
	run
clauses
	input(N) :- readint(N).
	produs(A, B, R) :- A = 1, R = B, !.
	produs(A, B, R) :- A1 = A - 1, produs(A1, B, R1), R = R1 + B.
	run :- write("Input A: "), input(A), 
		   write("Input B: "), input(B),
		   produs(A, B, R), 
		   write("A * B = ", R), nl. 
goal
	run.