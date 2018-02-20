domains
	n = integer
predicates
	fact(n, n)
	input(n)
	run
clauses
	input(N) :- write("Input N: "), readint(N).
	fact(1, 1) :- !.
	fact(N, R) :- N1 = N - 1, fact(N1, R1), R = R1 * N.
	run :- input(N), fact(N, R), write("Result: ", R).
goal
	run.