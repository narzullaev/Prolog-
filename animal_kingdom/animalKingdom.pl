
/*creating list of facts*/
/*Animalia tree starts here*/
/*facts about Arthropoda kingdom*/
in(housefly, domestica).
in(domestica, musca).
in(musca, musidae).
in(musidae, diptera).
in(diptera, insect).
in(insect, arthropoda).
/*Arthropoda kingdom finishes here*/

/*Chordate Kingdom starts here*/
/*Carnivora tree starts here*/
in(lion, leo).
in(leo, felis).
in(house_cat, domestica).
in(domestica, felis).
in(felis, felidae).
in(felidae, carnivora).
/*carnivora tree finishes here*/

/*primate tree starts here*/
/*pongidae tree starts here*/
in(chimpanzee, troglodytes).
in(troglodytes, pan).
in(pan, pongidae).
in(pongidae, primate).
/*pongidae tree finishes here*/

/*hominidae tree starts here*/
in(human, spiens).
in(spiens, homo).
in(homo, hominidae).
/*hominidae tree finishes here*/

in(hominidae, primate).
in(pongidae, primate).
/*primate tree finishes here*/

in(carnivora, mammal).
in(primate, mammal).
/*mammal tree finishes here*/

in(mammal, chordate)
in(chordate, animalia).
in(arthropoda, animalia).
/*animal Kingdom tree finishes here*/

go:-
nl,
write('What animal would you like to check?: '),nl,
read(X),
trace(X).


is_in(X,Y):-
!, in(X,Y).

is_in(X,Y):-
in(X,T),
is_in(T,Y).


trace(X):-
nl,nl,
!, is_in(X,Y),
write(X), 
write(' is a '),
write(Y), nl,
restart.


restart :-
	nl, write('Would you like to continue? (yes or  no): '), nl, 
	read(R),
	continue(R).
continue(no):-
	write('SESSION END. THANK YOU.') ,nl,!.
continue(yes) :-
	go.