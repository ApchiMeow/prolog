domains
	word,
	syn1, syn2, syn3,
	ant1, ant2, ant3 = symbol
 
predicates
	synonym(word,syn1,syn2,syn3)
	antonym(word,ant1,ant2,ant3)
	input(word)
	run
 
clauses
	synonym(beautiful,alluring,appealing,charming).
	synonym(angry,annoyed,bitter,enraged).
	synonym(big,colossal,considerable,enormous).
	synonym(bored,disinterested,fatigued,tired).
	synonym(broken,busted,collapsed,cracked).
	
	antonym(beautiful,awkward,bad,coarse).
	antonym(angry,calm,cheerful,cool).
	antonym(big,impoverished,inconsiderable,insignificant).
	antonym(bored,energized,refreshed,enthusiastic).
	antonym(broken,perfect,unbroken,complete).
	
	input(X) :- write("Input word:"),
	readln(X).
	run :- input(X), synonym(X,S1,S2,S3), antonym(X,A1,A2,A3),
	write("Synonyms for ", X, " are ", S1,",", S2,",", S3), nl,
	write("Antonyms for ", X, " are ", A1,",", A2,",", A3), nl.
 
goal
	run.