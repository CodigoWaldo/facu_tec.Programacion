
%EJERCICIO 2
%----------------------------------------
%necesito una funcion que checkee si un elemento está presente en un conjunto |
%necesito una funcion que tome un elemento y llame a la de ^, si true entonces +1 |
%necesito una funcion que recorra la lista de persona2 y checkee si la peli está en persona1, si no la añado a la lista de respuesta
%tengo una funcion que si tienen similitud mayor a 2 tira las listas a la funcion de arriba

esta_presente(ELEM,[ELEM|_]):- !.
esta_presente(ELEM,[CAR|CDR]):-
              ELEM \= CAR,
              esta_presente(ELEM,CDR).


similitud([],_,0).
similitud([CAR1|CDR1],L,SIM):-
    esta_presente(CAR1,L),
    similitud(CDR1,L,SIM1),
    SIM is SIM1 + 1,!.

similitud([CAR1|CDR1],L,SIM):-
    not(esta_presente(CAR1,L)),
    similitud(CDR1,L,SIM),!.

conseguirLista(_,[],[]).
conseguirLista(L1,[CAR1|CDR1],L2):-
    not(esta_presente(CAR1,L1)),
    conseguirLista(L1,CDR1,NL),
    L2 = [CAR1|NL],!.

conseguirLista(L1,[CAR1|CDR1],L2):-
    esta_presente(CAR1,L1),
    conseguirLista(L1,CDR1,L2),!.

recomendar(PER,X):-
    vio(PER,L1),
    vio(_,L2),
    similitud(L1,L2,Y),
    Y > 2,
    conseguirLista(L1,L2,X),!.