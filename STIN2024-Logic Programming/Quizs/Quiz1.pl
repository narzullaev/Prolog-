meaning(eat,makan).
meaning(hungry,lapar).
meaning(i,saya).
meaning(you,awak).

  translate(W,T):- 
	   meaning(W,T);
	   meaning(T,W).
run:-
	write('Enter ONE word (English OR Malay): '),
	read(W),
	translate(W,T),
	nl,
	write('Translate as: '),
	write(T), 
	nl,
	save,
	pause.
save:-
	nl,
	write('Enter ONE word (English or Malay): '),
	read(W),
	assert(W),
	nl,
	write('UNKNOWN WORD... please key in the meaning: '),
	read(T),
	assert(T),
	write('New information saved in the memory.'),
	(!),
	nl.
pause:-
	getb(K),
	nl,
	button(K).

button(q):-
	nl,
	write('SESSION END. THANK YOU.').

button(_):-
	run.
