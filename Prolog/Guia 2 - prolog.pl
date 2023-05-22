%Ejercicio 1
factorial(0,1). %caso de corte
factorial(X,R):- X>0, X1 is X-1, factorial(X1,R1), R is X*R1.

%Ejercicio 2
contar(_,[],0). %condición de corte
contar(V,[V|CDR],CANT):- contar(V,CDR,CANT1),CANT is CANT1 + 1.  %caso aditivo  
contar(V,[_|CDR],CANT):- contar(V,CDR,CANT). %caso neutro

%Ejercicio 3	 
cantidad([],0). %condición de corte
cantidad([_|D],Cantidad):- cantidad(D,Cantidad_R),Cantidad is Cantidad_R + 1. %contador

%Ejercicio 4
suma([],0). %condición de corte
suma([CAR|CDR],Total):- suma(CDR,Total_R), Total is Total_R + CAR. %suma

%Ejercicio 5
positivos([],[]). %condición de corte
positivos([CAR|CDR],[CAR|CDR2]):- CAR >= 0,positivos(CDR,ListaPositivo),!.  %valor positivo, concatena con R2
positivos([_|CDR],ListaPositivo):- positivos(CDR,ListaPositivo). %valor negativo

%Ejercicio 6 
sumaAux([],[],[]).  %condicion de corte  
sumaAux([CAR|CDR],[CAR2|CDR2],Listasuma):- Value is CAR+CAR2, sumaAux(CDR,CDR2,Listasuma2), Listasuma = [Value|Listasuma2].
suma_lista(L1,L2,ListaSuma):- cantidad(L1,X), cantidad(L2,X), sumaAux(L1,L2,ListaSuma).              

%Ejercicio 7 (preguntar)
eliminar(_,[],[]). %condicion de corte.
eliminar(X,[X|R1],R2):- eliminar(X, R1, R2). 
eliminar(X, [Y|R1], [Y|R2]):- eliminar(X, R1, R2).
eliminar_dup([],[]). % condicion de corte.
eliminar_dup([X|R1],[X|R2]):- eliminar(X, R1, R3), eliminar_dup(R3,R2). 

%Ejercicio 8 
profundidad([],0). %condicion de corte, rama vacia.
profundidad([_],1). %rama con una hoja.
profundidad([CAR|CDR],Prof):- profundidad(CAR,Prof2),profundidad(CDR|Prof3), Prof is max(Prof2,Prof3) + 1.

%Ejercicio 9 
insertar(Value,[],[Value]). %condición de corte, es mayor que todos.
insertar(Value,[CAR|CDR],[Value|[CAR|CDR]]):- CAR > Value.
insertar(Value,[CAR|CDR],[CAR|CDR2]):- insertar(Value,CDR,CDR2).

%Ejercicio 10 
ordenar([],[]). %condicion de cierre
ordenar([CAR|CDR],LO) :- ordenar(CDR,L2), insertar(CAR,L2,LO).

%Ejercicio 11 aplanar([1, [2, [3]]], ListaPlana) . => ListaPlana = [1, 2, 3] 
concatenar([],L,L).
concatenar([X|L1],L2,[X|L3]):- concatenar(L1,L2,L3).
aplanar([],[]). %condicion de cierre.
aplanar(X,[X]). 
aplanar([CAR|CDR],LP):- aplanar(CAR,LP2),aplanar(CDR,LP3), concatenar(L1,L2,LS).


%Ejercicio 11 (preguntar)

%Ejercicio 12 (preguntar)
ins(X,L,[X|L]).
ins(X,[Y|L1],[Y|L2]):- ins(X,L1,L2).

per([],[]).
per([X|L],Lp):- per(L,L1), ins(X,L1,Lp).

