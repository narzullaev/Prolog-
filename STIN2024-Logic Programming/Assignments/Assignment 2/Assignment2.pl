means(makan, eat).					/* Makan means eat in English */
means(minum, drink).				/* Minum means drink in English */
means(lapar, hungry).				/* Lapar means hungry in English */
means(saya, i).						/* Saya means I in English */
means(awak, you).					/* Awak means you in English */
means(mereka, they).				/* Mereka means they in English */
means(jam, watch).					/* Jam means watch in English */
means(waktu, time).					/* Waktu means time in English */
means(duduk, sit).					/* Duduk means sit in English */
means(cinta, love).					/* Cinta means love in English */
means(kerusi, chair).				/* Keruse means chair in English */
means(kasut, shoes).				/* Kasut means shoes in English */	
means(meja, table).					/* Meja means table in English */
means(kawan, friend).				/* Kawan means friend in English */
means(tutup, closed).				/* Tutup means close in English */
means(kucing, cat).					/* Kucing means cat in English */
means(arnap, rabbit).				/* Arnap means rabbit in English */
means(tikos, mouse).				/* Tikos means mouse in English */
means(tidur, sleep).                /* Tidur means sleep in English */
means(pening_kepala, headache).      /* Pening kepala means headache in English */

start:-
nl,
write('Enter ONE word (English or Malay): '),
read(X),
run(X).

translate(X,Y):-
means(X,Y).

translate(X, Y):-
means(Y,X).

run(X):-
nl, nl,
translate(X,Y),
write('Translated as: '),
write(Y),
nl, nl,
restart.

translate(X, Y):-
write('UNKNOWN WORD. Please key in the meaning: '),
read(Y),
asserta(means(X, Y)),
write('New information saved in the memory.'), nl.


restart :-
	nl,nl,
	write('Enter "q" to end the session, or enetr any key to continue(end with " . ").'),
	read(Y),
	continue(Y).
continue(q):-
	write('SESSION END. THANK YOU.') ,nl,!.
continue(_) :-
	start.
