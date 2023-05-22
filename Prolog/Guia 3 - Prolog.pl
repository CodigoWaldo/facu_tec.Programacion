%Ejercicio 1
factorial(0, 1):-!. %condición de corte
factorial(Numero, Factorial) :- Numero > 0,
						NumeroAnt is Numero - 1,
						factorial(NumeroAnt,FactorialAnt),					
						Factorial is Numero * FactorialAnt.

%Ejercicio 2
p(1).
p(2).
p(3).

/*
a. p(X). %devuelve X=1,2 y 3.
b. p(X), p(Y). %Realiza todas las combinaciones que puede haber con X e Y
c. p(X), !, p(Y). %Busca las combinaciones con en primer X y corta
*/

%Ejercicio 3 
eliminar_primero([CAR|CDR], X, CDR):- CAR=X,!. %caso de corte.
eliminar_primero([CAR|CDR], X, [CAR|L2]):- CAR\=X, eliminar_primero(CDR,X,L2). 

%Ejercicio 4 
agregar_nuevo(X,[],[X]):-!. %caso que no exista, CORTE.
agregar_nuevo(X,[CAR|CDR],[CAR|CDR]):- X=CAR,!. %caso de que exista, corte y devuelve la lista completa
agregar_nuevo(X,[CAR|CDR],[CAR|L2]):- X\=CAR, agregar_nuevo(X,CDR,L2). %caso recursivo.

%Ejercicio 5 
semejanza([],[],0).
semejanza([],[_|CDR],S):- semejanza([],CDR,S1),S is S1-1.
semejanza([_|CDR],[],S):- semejanza(CDR,[],S1),S is S1-1.
semejanza([CAR1|CDR1],[CAR2|CDR2],S):- CAR1=CAR2, semejanza(CDR1,CDR2,S2), S is S2+1,!. 
semejanza([CAR1|CDR1],[CAR2|CDR2],S):- CAR1\=CAR2, semejanza(CDR1,CDR2,S2), S is S2-1,!. 

%Ejercicio 6
diccionary([sanar, hola, sabana, sabalo, prueba, computadora,cartera, mate, termo, mesa, silla, sarna]).
%funcion extraida de teoria
miembro(X,[X|_]).
miembro(X,[_|R]):-miembro(X,R).

buscar_aux(_,[],[]).
	buscar_aux(Word,[CAR|Dic],[Sol|L]):- atom_chars(Word,Char_word),
	atom_chars(CAR,Char_car),
	semejanza(Char_word,Char_car,Sem),
	Sem>0,
	buscar_aux(Word,Dic,L),
	Sol = [CAR,Sem],!.
buscar_aux(Word,[CAR|Dic],L):-
    atom_chars(Word,Char_word),
    atom_chars(CAR,Char_car),
    semejanza(Char_word,Char_car,Sem), ncuentre. Debe validarse que su valor sea X= -1 o X >=1
 L una lista de elementos en donde se reemplazará
 R el último parámetro debe unificar con la lista resultante
*/



reemplazar(V,X,I,M,[CAR|CDR],R):- V=CAR,R = [X|CDR].

