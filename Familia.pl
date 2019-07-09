padrede('Jose','Anibal').
padrede('Maria','Anibal').
padrede('Mario','Ines').
padrede('Antonela','Ines').

padrede('Antino','Pablo').
padrede('Martha','Pablo').
padrede('Pedro','Odilia').
padrede('Monica','Odilia').

padrede('Anibal','Jhon').
padrede('Ines','Jhon').

padrede('Pablo','Emilce').
padrede('Pablo','Ronney').
padrede('Pablo','Viviana').
padrede('Odilia','Emilce').
padrede('Odilia','Ronney').
padrede('Odilia','Viviana').

padrede('Jhon','Kevin').
padrede('Jhon','Brayan').
padrede('Jhon','Cristian').
padrede('Emilce','Kevin').
padrede('Emilce','Brayan').
padrede('Emilce','Cristian').

padrede('Ronney','Brandon').
padrede('Andrea','Brandon').

padrede('Fredy','Diego').
padrede('Viviana','Diego').



hijode(A,B) :- padrede(B,A).
hermanode(A,B) :- padrede(C,A), padrede(C,B), A \== B.
abuelode(A,B) :- padrede(A,C), padrede(C,B).
bisabuelo(A,B) :- padrede(A,C), padrede(C,D), padrede(D,B).
nietode(A,B) :- abuelode(B,C).
tiode(A,B) :- hermanode(A,C), padrede(C,B).
sobrinode(A,B) :- padrede(C,A), hermanode(C,B).
primode(A,B) :- tiode(C,A), padrede(C,B).
casadocon(A,B) :- padrede(A,C), padrede(B,C), A \== B.


familiarde(A,B) :- padrede(A,B).
familiarde(A,B) :- abuelode(A,B).
familiarde(A,B) :- hermanode(A,B).
