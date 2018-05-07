domains
	i = integer
	list = i*
predicates
	run(i)
	box3(i,i,list,list,list)
	member(i,list)
	condition(i,list)
	sum(i,list)
clauses
	member(X,[X|_]).
	member(X,[_|Z]):- member(X,Z).
	
	run(N) :- box3(N,1,[],[],[]).
	box3(N,M,A,B,C) :- M > N, write(A), nl, 
	write(B), nl ,
	write(C).
	
	box3(N,M,A,B,C) :- M <= N, M1 = M + 1, condition(M,A), box3(N,M1,[M|A],B,C).
	box3(N,M,A,B,C) :- M <= N, M1 = M + 1, condition(M,B), box3(N,M1,A,[M|B],C).
	box3(N,M,A,B,C) :- M <= N, M1 = M + 1, condition(M,C), box3(N,M1,A,B,[M|C]).
	
	condition(_,[]).
	condition(K,L) :- I = K / 2, not(member(I,L)), sum(K,L).
	
	sum(_,[]).
	sum(K,[I|L]) :- J = K - I, not(member(J,L)), sum(K,L).
