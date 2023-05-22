#|
Dada una entrada de datos que sea una lista de listas,
 en donde el primer elemento es el día de la semana,
después una lista con el menú del día y por último una lista
 con opciones de reemplazo. Las listas del menú diario son
listas impropias en donde el 1er elemento es el tipo de comida
 y el 2do la cantidad de calorías para esa comida, la AUSENCIA
de alguna comida se interpreta como una lista de un solo elemento (con el tipo).

( ("Lunes" ((DESAYUNO . 120)(ALMUERZO . 280)(MERIENDA . 110)(CENA . 220)) ((ALMUERZO . 380)) ) --> 730
  ("Martes" ((DESAYUNO . 120)(ALMUERZO)(MERIENDA . 90)(CENA . 250)) ((ALMUERZO . 295)) ) --> 460
  ("Miércoles" ((DESAYUNO . 125)(ALMUERZO . 270)(MERIENDA . 95)(CENA . 290)) ((CENA . 220)) ) --> 780
  ("Jueves" ((DESAYUNO . 130)(ALMUERZO . 270)(MERIENDA . 120)(CENA . 280)) ((MERIENDA . 70)) ) --> 800
  ("Viernes" ((DESAYUNO . 120)(ALMUERZO . 275)(MERIENDA . 115)(CENA . 270)) () ) --> 780
)

Se desea que programen una función utilizando el
paradigma funcional que reciba como parámetros de
 entrada un máximo de calorías diaria y la lista anterior,
que procese cada elemento para verificar si es posible
alterar el menú fijo del día con alguna opción de reemplazo
 siempre y cuando la cantidad de calorías diaria no sea superior al máximo de calorías por día.
* El resultado dependerá de la cantidad de calorías máximas por cada semana.
* Solo se podrá reemplazar una sola comida por día.

El resultado debe ser una lista con el siguiente formato cuando el máximo de calorías permitido es 800:
( ("Lunes" ((DESAYUNO . 120)(ALMUERZO . 280)(MERIENDA . 110)(CENA . 220)) ) --> 730 (sin reemplazo)
  ("Martes" ((DESAYUNO . 120)(ALMUERZO . 295)(MERIENDA . 90)(CENA . 250)) ) --> 755 (con reemplazo)
  ("Miércoles" ((DESAYUNO . 125)(ALMUERZO . 270)(MERIENDA . 95)(CENA . 220)) ) --> 710 (con reemplazo)
  ("Jueves" ((DESAYUNO . 130)(ALMUERZO . 270)(MERIENDA . 70)(CENA . 280)) ) --> 750 (con reemplazo)
  ("Viernes" ((DESAYUNO . 120)(ALMUERZO . 275)(MERIENDA . 115)(CENA . 270)) ) --> 780 (sin reemplazo)
)

El resultado debe ser una lista con el siguiente formato cuando el máximo de calorías permitido es 900:
( ("Lunes" ((DESAYUNO . 120)(ALMUERZO . 380)(MERIENDA . 110)(CENA . 220)) ) --> 830 (con reemplazo)
  ("Martes" ((DESAYUNO . 120)(ALMUERZO . 295)(MERIENDA . 90)(CENA . 250)) ) --> 755 (con reemplazo)
  ("Miércoles" ((DESAYUNO . 125)(ALMUERZO . 270)(MERIENDA . 95)(CENA . 220)) ) --> 710 (con reemplazo)
  ("Jueves" ((DESAYUNO . 130)(ALMUERZO . 270)(MERIENDA . 70)(CENA . 280)) ) --> 750 (con reemplazo)
  ("Viernes" ((DESAYUNO . 120)(ALMUERZO . 275)(MERIENDA . 115)(CENA . 270)) ) --> 780 (sin reemplazo)
)

ACLARACIONES: No pueden utilizar funciones predefinidas de racket, con excepción de las que vimos en
 clases para validar o convertir string, listas, char, vectores, etc. Ante la duda pregunten. |#

;----------------------------------------------------
(define dieta
'(
  ("Lunes" ((DESAYUNO . 120)(ALMUERZO . 280)(MERIENDA . 110)(CENA . 220)) ((ALMUERZO . 380)) )
  ("Martes" ((DESAYUNO . 120)(ALMUERZO . 380)(MERIENDA . 90)(CENA . 250)) ((ALMUERZO . 295))       )
  ("Miércoles" ((DESAYUNO . 125)(ALMUERZO . 270)(MERIENDA . 95)(CENA . 290)) ((CENA . 220))   )
  ("Jueves" ((DESAYUNO . 130)(ALMUERZO . 270)(MERIENDA . 120)(CENA . 280)) ((MERIENDA . 70)) )
  ("Viernes" ((DESAYUNO . 120)(ALMUERZO . 275)(MERIENDA . 115)(CENA . 270)) () )
  ))

;devuelve el total de calorias del menu sin modificar
(define totalCal 
  (lambda (Lista)
    (if (null? Lista)
        0
        (let ((cal(cdr(car Lista))))
          (+ cal (totalCal (cdr Lista))) 
          ))))

;Reemplaza el plato de la lista en caso que el totalCal sea mayor a la dieta
(define Reemplazo2
  (lambda (Plato Lista)
    (if (null? Lista)
        ()
        (let ((p (car Lista))(r (cdr Lista)))
          (if (eqv? (car p)(car Plato))              
              (cons Plato r)
              (cons p (Reemplazo2 Plato r))      
              )))))
(define Reemplazo
  (lambda (Lista plato2 dieta)
    (if (null? plato2)
        Lista
        (if (>= dieta (totalCal Lista))
            Lista
            (Reemplazo2 plato2 Lista)))))
        
;Funcion Wrapper
(define menu-dieta
  (lambda (dieta calorias)
    (map
     (lambda (x)
       (if (null? (cdr(cdr x)))
           (void)
           (Reemplazo (car(cdr x)) (cdr(cdr x)) calorias)))
       dieta))
    ) 

(display "Máximo de calorías: 800 \n")
(menu-dieta dieta 800)
(display "Máximo de calorías: 900 \n")
(menu-dieta dieta 900)