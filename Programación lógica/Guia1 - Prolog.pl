%----------------------------------------
%Ejercicio 1

f(a, 2).
f(a, 3).
f(b, 2).
f(b, 4).
f(c, 1).
f(c, 2).

% f(X,1) = c
% f(X) = No existe la función para buscar
% f(a,X) = 2, 3
% f(c,1) = true
% f(X,Y) = devuelve todos las funciones (X,Y)
% f(2,a) = false
% f(X,Y),f(X,4) = f(b,2) - f(b,4) - false

%----------------------------------------
%Ejercicio 2

padre(leoncio,alberto).
padre(leoncio,geronimo).
padre(alberto,juan).
padre(alberto,luis).
padre(geronimo,luisa).

hermano(A,B):- padre(X,A),padre(X,B), A\=B.
nieto(A,B):- padre(X,A),padre(B,X).

%----------------------------------------
%Ejercicio 3


menu('Bombones de jamón', 'Locro', 'Dulce de batata').
menu( 'Bombones de jamón', 'Locro', 'Alfajor norteño').
menu( 'Tarta de Atún', 'Atados de repollo', 'Dulce de batata').
menu( 'Tarta de Atún', 'Pollo romano con hierbas y vino', 'Flan').
menu( 'Volovanes de atún', 'Matambre con espinacas y parmesano', 'Torta moka').
menu('Buñuelos de bacalao', 'Pollo romano con hierbas y vino', 'Alfajor norteño').


% a) menu(X,Y,Z)
% b) menu(X,Y,'Dulce de batata')
% c) menu(X,'Locro',Z)
% d) menu(X,'Pato a la naranja',Z) ->FALSE
% e) menu('Locro',Y,Z)

%----------------------------------------
%Ejercicio 4

%explicar el arbol SLD (de búsqueda) del punto c ejercicio 3

%----------------------------------------
%Ejercicio 5

ruta(santafe, parana).
ruta(parana, corrientes).
ruta(santafe, cordoba).
ruta(santafe, coronda).
ruta(santafe, rosario).
ruta(rosario, capital).
ruta(rosario, mardelplata).
ruta(capital, cordoba).

% a) ruta(X,cordoba)
% b) ruta(parana,Y)
% c) ruta(parana,cordoba) ->false
% d) 
combinacion(A,B) :- ruta(A, X), ruta(X, B).
% combinacion(santafe, corrientes) ->true

%----------------------------------------
%Ejercicio 6

estrella(sol).
orbita(sol,mercurio).
orbita(sol,venus).
orbita(sol,tierra).
orbita(sol,marte).
orbita(sol,jupiter).
orbita(sol,saturno).
orbita(sol,urano).
orbita(sol,neptuno).
orbita(sol,pluton).

orbita(tierra,luna).

orbita(marte,deimos).
orbita(marte,phobos).

orbita(pluton,charon).
orbita(pluton,nix).
orbita(pluton,hydra).

planeta(X) :- orbita(A,X),estrella(A) , A==sol.
luna(X) :- orbita(A,X), planeta(A).
lunaDe(A,B) :- orbita(A,B) ,planeta(A).

% a)
% planeta(X)
% luna(X)
% orbita(marte,deimos)

% b) todavia no se puede, falta teoria.

%----------------------------------------
%Ejercicio 7

entrada("omelete").
entrada("empanada").
principal("locro").
principal("guiso").
postre("flan").
postre("helado").

carta(Entrada,PlatoPrincipal,Postre) :- entrada(Entrada), principal(PlatoPrincipal),postre(Postre) .

%carta(X,Y,Z)
%RETORNA 3 RESULTADOS, uno para cada combinacion. en total son 8 combinaciones


%----------------------------------------
%Ejercicio 8

progenitor(maria,nahuel).
progenitor(pedro,nahuel).
progenitor(maria,miguel).
progenitor(pedro,miguel).

hombre(manuel).
hombre(pedro).
hombre(miguel).
mujer(maria).

%a
padre(P,H) :- progenitor(P,H), hombre(P).
%b
madre(M,H) :- progenitor(P,H), mujer(P).
%c
abuelo(N,A) :- progenitor(A,X),progenitor(X,N), hombre(N).
%d
abuela(N,A) :- progenitor(A,X),progenitor(X,N), mujer(N).
%e
hermane(A,B) :- progenitor(T,A) ,progenitor(T,B) , A\==B.
%f
hermano(A,B) :- progenitor(T,A) ,progenitor(T,B) , hombre(A), A\==B.
%g
hermana(A,B) :- progenitor(T,A) ,progenitor(T,B) , mujer(A), A\==B.
%h
sucesor(A,B) :- progenitor(B,A); abuelo(B,A); abuela(B,A). %recursión
%i           
es_madre(X) :- madre(X,H).
%j
es_padre(X) :- padre(X,H).
%k
tia(T,H) :- hermana(A,T), progenitor(A,H).
%l
yerno(X,Y) :- hombre(Y) , progenitor(Y,H) , progenitor(M,H) ,progenitor(X,M), Y/==M.
%m
nuera(N,Y) :- mujer(N) , es_madre(N), padre(P,H), madre(Y,H), madre(N,P).                    
 
                    
%----------------------------------------
%Ejercicio 9

novela_larga("Rayuela").
novela_larga("Karamazov").
novela_corta("Leones").
novela(X) :- novela_larga(X) ; novela_corta(X).

cuento_corto("Octaedro").
poema_largo("Inventario").

corto(X):- cuento_corto(X) ; novela_corta(X).
largo(X):- novela_larga(X) ; poema_largo(X).

abogado("pedro").
medico("tania").
ingeniero("waldo").
ingeniero("Haydée").
contador("livio").

mujer("tania").
mujer("Haydée").
hombre("livio").
hombre("waldo").
hombre("pedro").

gusta("livio","rayuela"). 
gusta("pedro",X) :- cuento_corto(X).
gusta(P,X) :- abogado(P),novela_larga(X).
gusta(P,X) :- ingeniero(P);medico(P), novela(X).
gusta(P,X) :- mujer(P), largo(X).
gusta(P,X) :- hombre(P), contador(P), cuento_corto(X), poema_largo(X).

%a gusta("livio",X) ver por qué no nombra todos siendo que deberia.
%b gusta(P,"Leones")
%c corto(X)

librovalioso(X):- gusta(Y,X), gusta(Z,X), Y \= Z.
