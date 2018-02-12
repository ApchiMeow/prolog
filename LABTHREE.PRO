domains
	i = integer
 
predicates
	f(i, i, i)
 
clauses
	f(A, B, R) :- A = 0, R = B.
	f(A, B, R) :- A = 1, R = B + 2.
	f(A, B, R) :- A = 2, R = B + 1.
	f(A, B, R) :- A > 2, A1 = A - 3, f(A1, B, R).