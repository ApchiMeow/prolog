domains
	i = integer
	list = i*
predicates
	naive_sort(list, list)
	perm(list, list)
	is_sorted(list)
clauses
	naive_sort(List,Sorted):-perm(List,Sorted),is_sorted(Sorted).
   
	is_sorted([]).
	is_sorted)[_]).
	is_sorted([X,Y|T]):-X=<Y,is_sorted([Y|T]).
