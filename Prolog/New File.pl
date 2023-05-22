pago(pablo,4500,1).
pago(gabriel,1450,0).
pago(federico,800,1).
pago(franco,800,0).

%cant elem de una lista
largo([],0):-!.
largo([_|R],L):-largo(R,L2),L is L2 + 1.

%calculo aplica o no descuento
descuento(P,1,D):- D is P * 0.7, !.
descuento(P,0,P).

%calculo del total que se gasta
total([],0):-!.
total([C|R],T):- not(pago(C,_,_)), total(R,T), !.
total([C|R],T):- pago(C,M,B),descuento(M,B,MB), total(R,T2), T is T2+MB.

%valor peña
valor_peña(LS,V):-total(LS,T),largo(LS,L), V is T/L.

%peña
peña_aux([],_,[]):-!.
peña_aux([X|R],Valor,[[X,Paga,Valor]|R2]):- not(pago(X,_,_) , peña_aux(R,Valor,R2),!.
peña_aux([X|R],Valor,[[X,Recibe,Dif]|R2]):- pago(X,M,B), descuento(M,B,MB), Dif is (MB-Valor), Dif >= 0 ,peña_aux(R,Valor,R2).
peña_aux([X|R],Valor,[[X,Paga,Dif2]|R2]):- pago(X,M,B), descuento(M,B,MB), Dif is (MB-Valor), Dif < 0 , Dif2 is -1 * Dif, peña_aux(R,Valor,R2).

peña([],[]):- write("no hay gente. \n"),!,fail.
peña(Nombres,Resultado):- valor_peña(Nombres,Valor), peña_aux(Nombres,Valor,Resultado).






