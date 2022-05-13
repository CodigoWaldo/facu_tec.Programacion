;----------------- ejercicio 1
(define factorial
  (lambda (number) ;le ingresa el numero 
    (if (eqv? 1 number) ; es el numero igual a 1
        1 ; true retorna 1 y corta
        (* number (factorial (- number 1)))  ;se multiplica el numero por la recursión de numero -1 
        )))

;----------------- ejercicio 2
(define Length
        (lambda (lista) ;recibe la lista
          (if (null? lista) ;si la lista es vacia retorna 0
              0
              (+ (Length (cdr lista)) 1) ;función recursiva
              )))

;----------------- ejercicio 3
(define count-elem
  (lambda (elem lista) ;recibe la lista
    (if (null? lista) ;si la lista  es vacia retorna 0
      0 ;condición de corte
      (if (eqv? elem (car lista))  ;si no es vacia pregunta si el elemento es igual al primer elemento de la lista    
          (+ 1 (count-elem elem (cdr lista))) ;si es igual suma 1
          (+ 0 (count-elem elem (cdr lista))) ;si no es igual suma 0
          ))))

;----------------- ejercicio 4




