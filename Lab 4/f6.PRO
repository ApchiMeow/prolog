domains
	n = integer
predicates
	expo(n, n, n)
	input(n)
	run
clauses
	input(N) :- readint(N).
	expo(X, 1, R) :- R = X, !.
	expo(X, N, R) :- N1 = N - 1, expo(X, N1, R1), R = R1 * X.
	run :- write("Input X: "), input(X), 
		   write("Input N: "), input(N),
		   expo(X, N, R), 
		   write("expo(X in N) = ", R), nl. 
goal
	run.