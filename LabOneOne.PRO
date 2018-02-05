domains
	word, syn = symbol
 
predicates
	synonym(word,syn)
	input(word)
	run
 
clauses
	synonym(arcane,cryptic).
	synonym(demure,lowly).
	synonym(wanton,lascivious).
	synonym(inveterate,ingrained).
	synonym(intrepid,dauntless).
	
	input(X) :- write("Input word:"),
	readln(X).
	run :- input(X), synonym(X,Y),
	write("Synonym for ", X, " is ", Y),nl.
 
goal
	run.