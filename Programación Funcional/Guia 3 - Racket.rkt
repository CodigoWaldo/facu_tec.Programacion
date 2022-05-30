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

;----------------- ejercicio 2 - 2

(define subst
  (lambda (a b lista)
    (if (null? lista) ;condición de corte ¿qué pasa si es nula?
     lista ;corte true
     (if (eqv? a (car lista)) ;corte false 
         (cons b (subst a b (cdr lista)))
         (cons (car lista) (subst a b (cdr lista)))
         ))))
               
;(subst 'a 'x '( a b c a d))

;----------------- ejercicio 3 - 2

(define eliminar
  (lambda (a l)
    (if (null? l)
        ()
        (let ((p (car l)) (q (cdr l)))
            (if (equal? a p)
                (eliminar a q)
                (cons p (eliminar a q)))))))


(define grupo-iguales
  (lambda (lista)
    (if (null? lista)
        ()
        (vector->list (make-vector (count-elem (car lista) lista) (car lista)))
        )))

(define agrupar
  (lambda (lista)
    (if (null? lista)
        ()
        (cons (grupo-iguales lista)
              (agrupar (eliminar (car lista) (cdr lista)))
              )
        )))

;(agrupar '(A A B C A B A D C))

;----------------- ejercicio 5

(define concatenar
  (lambda (list1 list2) 
    (if (null? list1) ;condición de corte
        list2
        (let ( (first (car list1)) (tail (cdr list1)) ) ;utilizo el let para definir variables
          (cons first (concatenar tail list2)) ;agrega el último elemento de la lista 1 al principio de la lista 2 de manera recursiva
          ))))

;(concatenar '(a b c d) '(e f g h))

;----------------- ejercicio 6

(define primer-num
  (lambda (lista)
    (if (null? lista)
        null
        ;(display "no hay numeros")
        (if (number? (car lista)) 
            (car lista)
            (primer-num (cdr lista))
            ))))

;(primer-num '( (1 . 2) 'a (b) (5) 'a))

;----------------- ejercicio 7

(define attach-at-end
  (lambda (valor lista)
    (let ( (valorL (cons valor '() ))) ;se pasa el valor a una lista
      (if (null? lista)
          valorL
          (cons (car lista) (attach-at-end valor (cdr lista))
            )))))

;(attach-at-end 'prueba '(esto es una)) 

;----------------- ejercicio 8

(define moduloNum ;función que reemplaza los numeros de la lista por su modulo 
  (lambda (lista)
    (if(null? lista)
        lista
        (cond
          ((> 0 (car lista))
           (cons (* -1 (car lista)) (moduloNum(cdr lista)))
           )
          (else          
           (cons (car lista) (moduloNum(cdr lista)))
            )
          ))))

(define stringToNumber
  (lambda (lista)
    (if(null? lista)
        lista
(cons (string->number(car lista)) (stringToNumber(cdr lista)))
        )))

(define boolToNumber
  (lambda (lista)
    (if(null? lista)
       lista
       (if (eqv? "V" (car lista))
                  (cons 1 (boolToNumber(cdr lista)))
                  (cons 0 (boolToNumber(cdr lista)))
                 ))
       )
    )

(define selectorfunc 
  (lambda (lista)
    (let (
          (letra  (car lista) )
          (lista2 (car(cdr lista)) )
          )
      (cond
      ((eqv? "D" letra)      
       (moduloNum lista2)
       )
      ((eqv? "T" letra)
       (stringToNumber lista2)
      )
      ((eqv? "B" letra)      
       (boolToNumber lista2)
       )
      )))
    )


(define conv-datos
  (lambda (lista)
    (if (null? lista)
        lista
        (let ((p (car lista)) (s (cdr lista)) )
         (cons (selectorfunc p) (conv-datos s) )
          
        ))))
        


;(conv-datos '( ("D" (1 2 -3 4 -5)) ("T" ("6" "7" "8")) ("B" ("V" "F"))) )

