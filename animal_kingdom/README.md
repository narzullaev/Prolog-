# Animal Kingdom 

## Problem

#### Given an assignment from "STIN2024 Logic Programming" to create a simple program (Prolog) to search recrusively across added facts using rules. 

#### Here how the sample question looks like

![screenshot_3](https://user-images.githubusercontent.com/33327894/38142185-00109bf4-346e-11e8-86e8-f854719662f8.jpg)
![screenshot_4](https://user-images.githubusercontent.com/33327894/38142207-0b2f8c0c-346e-11e8-9a18-251f7a1c60b1.jpg)

#### The given hierarchy is as below: 

![screenshot_5](https://user-images.githubusercontent.com/33327894/38142242-2bbd53e6-346e-11e8-9bbe-f36d62fa7fc1.jpg)

## Solution 
First I created the list of facts based on given hirarchy. 
```prolog
in(lion, leo).
in(leo, felis).
in(house_cat, domestica).
in(domestica, felis).
in(felis, felidae).
in(felidae, carnivora).
```
Then I came up with the list of rules. Since the task requires to have an interaction with user I also created a loop with the stoppic condition. 
The program starts when user start the query by typing go. And the following piece of code will be execuded. 

```prolog
go:-
nl,
write('What animal would you like to check?: '),nl,
read(X),
trace(X).
```
As a solutin to trace the possible answers the Recrusion method is used. Recrusion is a procedure that calling itself to perform the tasks inside its tasks until the stopping condition is reached. 

Example:

```prolog
is_in(X,Y):-
in(X,Y).

is_in(X,Y):-
in(X,T),
is_in(T,Y).
```
In order to create the loop I created the following lines of code

```prolog
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
 
 ```
 
 ## Sample output 
 ![screenshot_6](https://user-images.githubusercontent.com/33327894/38142776-3d6cd0ec-3470-11e8-82e2-197cd5cf3843.jpg)

 To test the project please download and run 'animalKingdom.pl'


 ## Contributors 
- Sardor Narzullaev <mr.narzullaev@gmail.com>
- Ong Jing Wen <wen_ojw@hotmail.com> 


## Liicence and Copyright 

Copyright (c) 2018 Sardor Narzullaev

Licensed under [MIT License](LICENCE)
