domains
	n = integer
predicates
	count(n, n)
	input(n)
	run
clauses
	input(N) :- readint(N).
	count(A, R) :- A < 0, !.
	count(A, R) :- A1 = A mod 10, count(A1, R1), R = R1 + 1.
	run :- write("Input A: "), input(A), 
		   count(A, R), 
		   write("count = ", R), nl. 
goal
	run.