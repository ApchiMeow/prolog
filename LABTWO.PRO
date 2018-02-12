domains
	person = symbol
 
predicates
	male(person)
	female(person)
	parents(person, person, person)
	father(person, person)
	mother(person, person)
	brother(person, person)
	sister(person, person)
	son(person, person)
	daughter(person, person)
	grandfather(person, person)
	grandmother(person, person)
	grandson(person, person)
	granddaughter(person, person)
	uncle(person, person)
	aunt(person, person)
	hasChildren(person)
	hasGrandChildren(person)
	
clauses
	male("Vasilii").
	male("Ivan").
	male("Constantin").
	male("Iurii").
	male("Vladimir").
	male("Vladislav").
	male("Eugen").
	male("Alexander").
	
	female("Valentina").
	female("Maria").
	female("Irina").
	female("Svetlana").
	female("Alena").
	female("Ekaterina").
	
	parents("Vasilii", "Valentina", "Iurii").
	parents("Vasilii", "Valentina", "Constantin").
	
	parents("Ivan", "Maria", "Irina").
	parents("Ivan", "Maria", "Svetlana").
	
	parents("Iurii", "Irina", "Vladislav").
	
	parents("Constantin", "Alena", "Eugen").
	parents("Constantin", "Alena", "Ekaterina").
	
	parents("Vladimir", "Svetlana", "Alexander").
	
	father(Father, Child) :- male(Father), parents(Father, _, Child), write(Father, " is father of ", Child), nl.
	mother(Mother, Child) :- female(Mother), parents(_, Mother, Child), write(Mother, " is mother of ", Child), nl.
	brother(Brother, Person) :-  male(Brother), parents(Father, Mother, Brother), parents(Father, Mother, Person), not(Brother = Person), write(Brother, " is brother of ", Person), nl.
	sister(Sister, Person) :-  female(Sister), parents(Father, Mother, Sister), parents(Father, Mother, Person), not(Sister = Person), write(Sister, " is sister of ", Person), nl.
	son(Son, Person) :- male(Son), father(Person, Son), write(Son, "is son of ", Person), nl.
	son(Son, Person) :- male(Son), mother(Person, Son), write(Son, "is son of ", Person), nl.
	daughter(Daughter, Person) :- female(Daughter), father(Person, Daughter), write(Daughter, "is daughter of ", Person), nl.
	daughter(Daughter, Person) :- female(Daughter), mother(Person, Daughter), write(Daughter, "is daughter of ", Person), nl.
	grandfather(Grandfather, Grandchild) :- male(Grandfather), parents(Grandfather, _, Person), parents(Person, _, Grandchild), write(Grandfather, " is grandfather of ", Grandchild), nl.
	grandfather(Grandfather, Grandchild) :- male(Grandfather), parents(Grandfather, _, Person), parents(_, Person, Grandchild), write(Grandfather, " is grandfather of ", Grandchild), nl.
	grandmother(Grandmother, Grandchild) :- female(Grandmother), parents(Grandmother, _, Person), parents(Person, _, Grandchild), write(Grandmother, " is grandfather of ", Grandchild), nl.
	grandmother(Grandmother, Grandchild) :- female(Grandmother), parents(Grandmother, _, Person), parents(_, Person, Grandchild), write(Grandmother, " is grandfather of ", Grandchild), nl.
	grandson(Grandson, Person) :- male(Grandson), parents(Person, _, X), parents(X, _, Grandson), write(Grandson, " is grandson of ", Person), nl.
	grandson(Grandson, Person) :- male(Grandson), parents(Person, _, X), parents(_, X, Grandson), write(Grandson, " is grandson of ", Person), nl.
	grandson(Grandson, Person) :- male(Grandson), parents(_, Person, X), parents(X, _, Grandson), write(Grandson, " is grandson of ", Person), nl.
	grandson(Grandson, Person) :- male(Grandson), parents(_, Person, X), parents(_, X, Grandson), write(Grandson, " is grandson of ", Person), nl.
	granddaughter(Granddaughter, Person) :- female(Granddaughter), parents(Person, _, X), parents(X, _, Granddaughter), write(Granddaughter, " is granddaughter of ", Person), nl.
	granddaughter(Granddaughter, Person) :- female(Granddaughter), parents(Person, _, X), parents(_, X, Granddaughter), write(Granddaughter, " is granddaughter of ", Person), nl.
	granddaughter(Granddaughter, Person) :- female(Granddaughter), parents(_, Person, X), parents(X, _, Granddaughter), write(Granddaughter, " is granddaughter of ", Person), nl.
	granddaughter(Granddaughter, Person) :- female(Granddaughter), parents(_, Person, X), parents(_, X, Granddaughter), write(Granddaughter, " is granddaughter of ", Person), nl.
	uncle(Uncle, Person) :- male(Uncle), brother(Uncle, X), parents(X, _, Person), write(Uncle, " is uncle of ", Person), nl.
	uncle(Uncle, Person) :- male(Uncle), brother(Uncle, X), parents(_, X, Person), write(Uncle, " is uncle of ", Person), nl.
	aunt(Aunt, Person) :- female(Aunt), sister(Aunt, X), parents(X, _, Person), write(Aunt, " is aunt of ", Person), nl.
	aunt(Aunt, Person) :- female(Aunt), sister(Aunt, X), parents(_, X, Person), write(Aunt, " is aunt of ", Person), nl.
	hasChildren(Person) :- parents(Person, _, _).
	hasChildren(Person) :- parents(_, Person, _).
	hasGrandChildren(Person) :- parents(Person, _, X), parents(X, _, _).
	hasGrandChildren(Person) :- parents(Person, _, X), parents(_, X, _).
	hasGrandChildren(Person) :- parents(_, Person, X), parents(X, _, _).
	hasGrandChildren(Person) :- parents(_, Person, X), parents(_, X, _).
	