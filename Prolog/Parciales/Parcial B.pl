/*
Dada una lista de letras, y un conjunto de palabras (a modo de diccionario) encontrar todas las
posibles maneras de combinar dichas letras para formar listas de palabras del diccionario.
Lo que hay que reproducir es el comportamiento del "Teclado Swype" del celular.
La forma de declarar las palabras del diccionario queda a criterio del alumno.
Se debe validar que los valores de la lista de letras no sean n�meros.
ejemplo:

swype([h, i, o, l, k, j, h, g, f, d, s, a], R).--> 'hola'; 'hoja' ; 'hija'.
swype([h, i, o, l, k, j, h, g, f, 1, s, a], R).--> fail.
*/

% crear diccionario de palabras
% validar lista que no contenga numeros
% comparar caracteres

diccionario('hola').
diccionario('hoja').
diccionario('hija').

% Quiero una funcion que valide la lista

validar([]).
validar([CAR|CDR]):-
    not(number(CAR)),
    validar(CDR).

% Quiero una funcion que dada una lista de caracteres checkee si se puede formar una palabra dada

se_forma(_,[]):-!.
se_forma([CAR|CDR],L1):-
    eliminarNCaracteres(CAR,L1,L2,1),
    se_forma(CDR,L2).
    

% Quiero una funcion que si un caracter esta en la lista, lo elimine de la misma.

eliminarNCaracteres(_,[],[],_).
eliminarNCaracteres(ELEM,[ELEM|CDR],L,N):-
    N \= 0,
    N2 is N-1,
    eliminarNCaracteres(ELEM,CDR,L1,N2),
    L = L1,!.
eliminarNCaracteres(ELEM,[ELEM|CDR],L,N):-
    N == 0 ,
    eliminarNCaracteres(ELEM,CDR,L1,N),
    L = [ELEM|L1],!.
eliminarNCaracteres(ELEM,[CAR|CDR],L,N):-
    CAR \= ELEM,
    eliminarNCaracteres(ELEM,CDR,L1,N),
    L = [CAR|L1],!.

% Quiero una funcion que resuelva los datos para pasarselos.

formaPalabras(L,RES):-
    validar(L),
    diccionario(RES),
    atom_chars(RES,L2),
    se_forma(L,L2).
