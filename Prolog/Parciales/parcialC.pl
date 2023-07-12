%validaciones a cumplir

%1 - pasar de string a lista char
aLista(PASS,L):-string_chars(PASS,L).

%2 -que la entrada tenga al menos un numero
tiene_numero([CAR|_]):- char_type(CAR,digit),!.
tiene_numero([_|CDR]):- tiene_numero(CDR).
tiene_numero([]):-write("La clave debe contener al menos un número."),!,fail.

%3 -mas de 8 y menos de 10 caracteres
longitud_aux([],0).
longitud_aux([_|CDR],LONG):-longitud_aux(CDR,LONG2),LONG is (1 + LONG2).
longitud(LISTA):-longitud_aux(LISTA,N),N > 10;N < 8.
longitud(_):-write("La clave debe contener más de 10 o menos de 8 caracteres."),fail.

%4 -La clave NO debe contener secuencias de 3 letras minúsculas o mayúsculas en orden ascendente o descendente.

tiene_secuencia([]):-!.

tiene_secuencia([CAR1, CAR2, CAR3|_]):-
    char_code(CAR1, NUM1),
    char_code(CAR2, NUM2),
    char_code(CAR3, NUM3),  
    X2 is NUM1 + 1,X3 is NUM2 + 1,
    NUM2 == X2 , NUM3 == X3,!.

tiene_secuencia([CAR1, CAR2, CAR3|_]):-
    char_code(CAR1, NUM1),
    char_code(CAR2, NUM2),
    char_code(CAR3, NUM3),
    X2 is NUM1 - 1,X3 is NUM2 - 1,
    NUM2 == X2 , NUM3 == X3,! .

tiene_secuencia([_|CDR]):- tiene_secuencia(CDR).


%wrapper
passValidator(PASS):-aLista(PASS,L),longitud(L),tiene_numero(L),tiene_secuencia(L),string(PASS).
