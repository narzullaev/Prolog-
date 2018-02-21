# Assignment 1
## Description

This assignmebt was given from **STIN2024 -Logic Programmins** as Assignemnet 1 from the series of Assignments. We were asked to 
build a small program to translate list of English words into Malay and vice versa. For this, first, I created list of facts which 
consists of 19 english words with its meaning in Malay. Then I created 2 rules to simulate the program. 

**The first rule:**
```
translate(Malay, English):-
means(Malay, English).

```
translates Malay words to english. You can test this by simply typing "translate(any malay word from the list of 19 words, X ).


### Example
```
translate(makan, X).
```
![image](https://user-images.githubusercontent.com/33327894/36486332-3c14594c-1759-11e8-87f2-3da3caf2b9c0.png)

**The second rule:**

```
translate(English, Malay):-
means(Malay, English).
```
translates English words to Malay. You can test this by simply typing "translate(any english word from the list of 19 words, X ).

![image](https://user-images.githubusercontent.com/33327894/36488405-56eeb118-175e-11e8-94ac-124dca36e7db.png)
