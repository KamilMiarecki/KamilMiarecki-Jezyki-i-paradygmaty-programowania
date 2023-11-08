%zad1
%

rzeczownik(ala).
rzeczownik(jan).
rzeczownik(kot).
rzeczownik(pies).
rzeczownik(rower).
rzeczownik(slonce).

czasownik(ma).
czasownik(jest).
czasownik(lubi).

przymiotnik(fajny).
przymiotnik(mily).

zadanie(A,B,C):-
rzeczownik(A),
czasownik(B),
rzeczownik(C),
write('zdanie poprawne'), nl,
write(A),write(' '),write(B),write(' '),write(C).

zdanie(A,B,C,D):-
rzeczownik(A),
czasownik(B),
przymiotnik(C),
rzeczownik(D),
write('zdanie poprawne'),nl,
write(A),write(' '),write(B),write(' '),write(C),write(' '),write(D).


%silnia rek
silnia(0,1).
silnia(N,Wynik):-
    N>0,
    NewN is N-1,
    silnia(NewN,NewWynik),
    Wynik is N*NewWynik.

%zadanie2
fibb(0,0).
fibb(1,1).
fibb(N,Wynik):-
    N>1,
    N1 is N-1,
    N2 is N-2,
    fibb(N1,F1),
    fibb(N2,F2),
    Wynik is F1+F2.

potega(_,0,1).
potega(A,B,C):-
    B>0,
    B1 is B-1,
    potega(A,B1,C1),
    C is A*C1.

warunek(N):-
    (   N>0 ->
    write('N wieksze od 0');
    write('N jest mniejsze od 0')).



hanoi(1, Source, Target, _) :-
    write('Przenieœ kr¹¿ek z '), write(Source), write(' na '), write(Target), nl.

hanoi(N, Source, Target, Auxiliary) :-
    N > 1,
    N1 is N - 1,
    hanoi(N1, Source, Auxiliary, Target),
    hanoi(1, Source, Target, _),
    hanoi(N1, Auxiliary, Target, Source).

