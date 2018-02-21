/*This is an assignment one */
/*Done by Sardor Narzullaev 236201*/

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

/*Translate from Malay to English*/
translate(Malay, English):-
means(Malay, English).


/*Translate from English to Malay*/
translate(English, Malay):-
means(Malay, English).
