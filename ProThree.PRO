domains
	s = symbol
 
predicates
	male(s)
	female(s)
	parents(s,s)
	father(s,s)
	mother(s,s)
	brother(s,s)
	sister(s,s)
	son(s,s)
	daughter(s,s)
	grandson(s,s)
	granddaughter(s,s)
	grandfather(s,s)
	grandmother(s,s)
	aunt(s,s)
	uncle(s,s)
 
clauses
	male("Vasilie").
	female("Valentina").
	male("Iurie").
	male("Constantin").

	female("Alena").

	male("Vladislav").
	male("Eugen").
	male("Alexander").
	female("Ekaterina").

	male("Vladimir").
	
	male("Ivan").
	male("Maria").
	female("Irina").
	female("Svetlana").

	parents("Vasilie", "Iurie").
	parents("Valentina", "Iurie").

	parents("Vasilie", "Constantin").
	parents("Valentina", "Constantin").
	
	parents("Iurii","Vladislav").
	parents("Irina","Vladislav").

	parents("Alena", "Eugen").
	parents("Constantin", "Eugen").
	parents("Alena", "Ekaterina").
	parents("Constantin", "Ekaterina").

	parents("Svetlana", "Alexander").
	parents("Vladimir", "Alexander").
	
	father(X,Y) :- parent(X,Y),male(X).
	/*
	father("Vasilie", "Iurie").
	father("Vasilie", "Constantin").
	father("Ivan", "Irina").
	father("Ivan", "Svetlana").
	father("Iurie", "Vladislav").
	father("Vladimir", "Alexander").
	father("Constantin", "Eugen").
	father("Constantin", "Ekaterina").

	mother("Valentina", "Iurie").
	mother("Valentina", "Constantin").
	mother("Maria", "Irina").
	mother("Maria", "Svetlana").
	mother("Irina", "Vladislav").
	mother("Svetlana", "Alexander").
	mother("Alena", "Eugen").
	mother("Alena", "Ekaterina").

	brother("Iurie", "Constantin").
	brother("Constantin", "Iurie").
	sister("Svetlana", "Irina").
	sister("Irina", "Svetlana").

	son("Iurie", "Vasilie").
	son("Constantin", "Vasilie").
	son("Iurie", "Valentina").
	son("Constantin", "Valentina").

	son("Vladislav", "Iurie").
	son("Alexander", "Vladimir").
	son("Eugen", "Constantin").

	son("Vladislav", "Irina").
	son("Alexander", "Svetlana").
	son("Eugen", "Alena").

	daughter("Ekaterina", "Alena").
	daughter("Ekaterina", "Constantin").

	daughter("Svetlana", "Ivan").
	daughter("Svetlana", "Maria").
	daughter("Irina", "Ivan").
	daughter("Irina", "Maria").

	grandson("Vladislav", "Vasilie").
	grandson("Eugen", "Vasilie").
	grandson("Vladislav", "Ivan").
	grandson("Alexander", "Ivan").

	granddaughter("Ekaterina","Vasilie").

	grandfather(
	grandmother(
	aunt(
	uncle(
 
	sister(Sister,Brother) :- female(Sister), male(Brother), parents(Sister,Father,Mother), parents(Brother,Father,Mother).

	who_is_the_sister :- sister(Sister,Brother), write(Sister," is the sister of ",Brother, "."),nl.
	
 
goal
	who_is_the_sister*/