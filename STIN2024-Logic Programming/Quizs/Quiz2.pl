start:-
write('What would you like to do?'),nl,
write('1) Clock in'),nl,
write('2) Clock out'),nl,
write('3) Save into  a file'),nl,
read(X),
student(X),
restart.

student(1):-
write('Enter your matric number: | : '),
read(Y),nl,
write('Enter the current time: |: '),
read(Z),nl,
asserta(students(in, Y,Z)).

student(2):-
write('Enter your matric number: | : '),
read(Y),nl,
write('Enter the current time: |: '),
read(Z),nl,
asserta(students(out, Y, Z)).

student(3):-
tell('stuRecord.pl'), listing(students/3), told.

restart :-
	nl,nl,
	write('Enter "q" to end the session, or enetr any key to continue(end with " . ").'),
	read(A),
	continue(A).
continue(q):-
	write('SESSION END. THANK YOU.') ,nl,!.
continue(_) :-
	start.

