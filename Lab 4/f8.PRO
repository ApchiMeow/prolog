domains
	n = integer
predicates
	succesor(n, n)
	%predecesor(n, n)
	input(n)
	run
clauses
	input(N) :- readint(N).
	succesor(A, B) :- A = B; A > B, write("NOT succesor"), !.
	succesor(A, B) :- A1 = A + 1, succesor(A1, B).
	run :- write("Input A: "), input(A), 
		   write("Input B: "), input(B),
		   succesor(A, B).
goal
	run.