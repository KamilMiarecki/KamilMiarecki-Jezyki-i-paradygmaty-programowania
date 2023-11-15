% listy
pisz_liste([]).
pisz_liste([H|T]):-
    write(H),
    write(' '),
    write(T).


nalezy(E,[E|_]).
nalezy(E,[_|Tail]):-
    nalezy(E,Tail).


dlugosc([],0).
dlugosc([_|Ogon],Dlug):-
    dlugosc(Ogon,X),
    Dlug is X+1.

sklej([],X,X).
sklej([X|L1],L2,[X|L3]):-
    sklej(L1,L2,L3).

dodaj(X,L,[X|L]).

usun(X,[X|R],R).
usun(X,[Y|Ogon],[Y|R]):-
    usun(X,Ogon,R).

ostatni(E,[E]).
ostatni(E,[_|L]):-
    ostatni(E,L).
