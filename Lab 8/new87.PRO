DOMAINS
house=house(string,string,string,string,string)
houses=house*
 
PREDICATES
nondeterm solve(houses)
first(house,houses)
middle(house,houses)
nondeterm left(house,house,houses)
nondeterm near(house,house,houses)
nondeterm member(house,houses)
 
CLAUSES
member(H,[H|_]).
member(H,[_|Tail]):-member(H,Tail).
 
solve(W):-
       W=[_,_,_,_,_],  
       member(house(red,en,_,_,_), W), 
       member(house(_,sw,dog,_,_), W),
       member(house(_,da,_,tea,_), W),
       left(house(green,_,_,_,_), house(white,_,_,_,_), W),
       member(house(green,_,_,coffee,_), W),
       member(house(_,_,bird,_,pallmall), W),
       middle(house(_,_,_,milk,_), W),
       member(house(yellow,_,_,_,dunhill), W),
       first(house(_,no,_,_,_), W),
       near(house(_,_,_,_,marlboro), house(_,_,cat,_,_), W),
       near(house(_,_,horse,_,_), house(_,_,_,_,dunhill), W),
       member(house(_,_,_,beer,winfield), W),
       near(house(_,no,_,_,_), house(blue,_,_,_,_), W),
       member(house(_,de,_,_,rothmans), W),
       near(house(_,_,_,_,marlboro), house(_,_,_,water,_), W),
       member(house(_,_,fish,_,_), W).
 
first(H, [H,_,_,_,_]).
middle(H, [_,_,H,_,_]).
left(H1, H2, W):-
       W=[H1,H2,_,_,_];
       W=[_,H1,H2,_,_];
       W=[_,_,H1,H2,_];
       W=[_,_,_,H1,H2].
near(H1,H2,W):-
       left(H1,H2,W);
       left(H2,H1,W).
       
GOAL
solve(W).