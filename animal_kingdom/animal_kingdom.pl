
#creating list of facts
#Animalia tree starts here
#facts about Arthropoda kingdom
in(housefly, domestica).
in(domestica, musca).
in(musca, musidae).
in(musidae, diptera).
in(diptera, insect).
in(insect, arthropoda).
#Arthropoda kingdom finishes here

#Chordate Kingdom starts here
#Carnivora tree starts here
in(lion, leo).
in(leo, felis).
in(house_cat, domestica).
in(domestica, felis).
in(felis, felidae).
in(felidae, carnivora).
#carnivora tree finishes here

#primate tree starts here
#pongidae tree starts here
in(chimpanzee, troglodytes).
in(troglodytes, pan).
in(pan, pongidae).
in(pongidae, primate).
#pongidae tree finishes here

#hominidae tree starts here
in(human, spiens).
in(spiens, homo).
in(homo, hominidae).
#hominidae tree finishes here

in(hominidae, primate).
in(pongidae, primate).
#primate tree finishes here

in(carnivora, mammal).
in(primate, mammal).
#mammal tree finishes here

in(mammal, chordate)
#Chordate tree finishes here

in(chordate, animalia).
in(arthropoda, animalia).
#animal Kingdom tree finishes here