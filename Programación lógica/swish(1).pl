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

/*
* a) padre(alberto,luis)
* b) padre(luis, alberto)
*c) hermano(X,luis)
*d)nieto(X,luisa)
*e)nieto(X,Y)
*/

%----------------------------------------
%Ejercicio 3
%hechos
menu('Bombones de jamón', 'Locro', 'Dulce de batata').
menu('Bombones de jamón', 'Locro', 'Alfajor norteño').
menu('Tarta de Atún', 'Atados de repollo', 'Dulce de batata').
menu('Tarta de Atún', 'Pollo romano con hierbas y vino', 'Flan').
menu('Volovanes de atún', 'Matambre con espinacas y parmesano', 'Torta moka').
menu('Buñuelos de bacalao', 'Pollo romano con hierbas y vino', 'Alfajor norteño').


listado_menus(X,Y,Z).
