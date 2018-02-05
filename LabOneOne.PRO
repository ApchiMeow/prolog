domains
	word, syn = symbol
 
predicates
	synonym(word,syn)
	input(word)
	run
 
clauses
	synonym(beautiful,alluring).
	synonym(angry,annoyed).
	synonym(big,colossal).
	synonym(bored,disinterested).
	synonym(broken,busted).
	
	input(X) :- write("Input word:"),
	readln(X).
	run :- input(X), synonym(X,Y),
	write("Synonym for ", X, " is ", Y),nl.
 
goal
	run.