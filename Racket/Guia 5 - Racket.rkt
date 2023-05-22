;------------------------------
;Ejercicio 1.

;INVERTIR
(define concatenar (lambda (l1 l2)
              (if (null? l1)
                  l2
                  (cons (car l1) (concatenar (cdr l1) l2)))))

(define invertir (lambda (l1)
                   (if (null? l1)
                       '()
                       (concatenar  (invertir (cdr l1)) (cons (car l1) '()) ))))

;Wrapper

(define conctat-inv (lambda (l1 l2)
                      (concatenar l1 (invertir l2))))

;(conctat-inv '(1 2 3) '(4 5 6))

;------------------------------
;Ejercicio 2.

(define pertenece-2 (lambda (a l)
                    (if (null? l)
                        #f
                        (if (eqv? (car l) a)
                            #t
                            (pertenece-2 a (cdr l))))))


(define pertenece (lambda (a l1 l2)
                    (if (eqv? (pertenece-2 a l1) (pertenece-2 a l2))
                              #t
                              #f)))

;(pertenece 'a '(a b c) '(r f g a)) 
;(pertenece 'a '(a b c) '(r f g h))

;------------------------------
;Ejercicio 3.

(define esAtom (lambda (a b)
                 (if (eqv? a b)
                     #t
                     #f)))
                     

(define cant-izq (lambda (a l)
                   (if (null? l)
                       0
                       (if (esAtom a (car l))
                           0
                           (+ 1 (cant-izq a (cdr l))) ))))
                           
;(cant-izq 'd '(a b c d e f))

;------------------------------
;Ejercicio 4.

#|
Definir una función que añada un elemento a una lista en caso de que aquel no se
encuentre en ésta.
(addif 'a '(b c d)) → '(b c d a)
(addif 'a '(a b c d)) → '(a b c d)
(addif 'c '(b c d)) → '(b c d)
|#


(define buscarElem (lambda (a l)
                     (if (null? l)
                         #f
                         (if (eqv? a (car l))
                             #t
                             (buscarElem a (cdr l))))))

(define attach-at-end (lambda (l x)
                        (if (null? l)
                            (cons x l)
                            (cons (car l) (attach-at-end (cdr l) x)))))
                       
(define addif (lambda (a l)
                (if (buscarElem a l)
                    l
                    (attach-at-end l a))))

;(addif 'a '(b c d))
;(addif 'a '(a b c d))
;(addif 'c '(b c d))

;------------------------------
;Ejercicio 5.

#|
Definir un predicado que tome tres argumentos: día, mes y año, y devuelva T si es
una fecha válida.
(FECHAP 12 12 1986) => #t
(FECHAP 12 30 1987) => #f
(FECHAP 31 2 1986) => #f
(FECHAP 31 11 1876) => #t
|#

(define fechap
  (lambda (d m a)
    (if (or (> m 12) (> d 31) (< m 1) (< d 1) ) ;condiciones básicas
        #f
        (if (or (and (eqv? m 2) (> d 28)) ;condiciones específicas
                (and (or (eqv? m 4) (eqv? m 6) (eqv? m 9) (eqv? m 11)) (> d 30)))
                 #f
                 #t))))

;(fechap 12 12 1986)
;(fechap 12 30 1987)
;(fechap 31 2 1986)
;(fechap 31 11 1876)


;------------------------------
;Ejercicio 6.

#|
Definir la función get-profundidad que obtiene el número máximo de listas anidadas
que aparecen en una lista.
(get-profundidad ’((1 (2)) (((5 7))) 4)) → 3
|#

(define mayor (lambda (ls)
                (let ((elem1 (car ls)))
                  (if (= (length ls) 1)
                      elem1
                      (let ((elem2 (mayor (cdr ls))))
                        (if (> elem2 elem1)
                            elem2
                            elem1))))))

(define get-profundidad
  (lambda (e)
    (if (null? e)
        0
        (if (list? e)
            (+ 1 (mayor (map (lambda (x) (get-profundidad x)) e)))
            -1))))

;(get-profundidad '( (1 (2)) (((5 7))) 4 ) )

#|------------------------------
Ejercicio 7.
Definir una función APLANAR que reciba como argumento una expresión simbólica
y elimine todos los paréntesis que aparezcan en esa expresión, devolviendo como
resultado una lista con todos los átomos que aparezcan en el argumento.
(APLANAR ‘( (1 2 3) (9 (2 3 4) ) ( ( ( ( 3 4 ( 7 ) ) ) ) ) ) ) → ( 1 2 3 9 2 3 4 3 4 7 )
|#

(define APLANAR
  (lambda (ls)
    (if (null? ls)
        ()
        (let ((p (car ls)) (r (cdr ls)))
          (if (list? p)
              (concatenar (APLANAR p) (APLANAR r))
              (cons p (APLANAR r))
    )))))

(APLANAR '( (1 2 3) (9 (2 3 4) ) ))

#|------------------------------
Ejercicio .



|#


#|------------------------------
Ejercicio .



|#

#|------------------------------
Ejercicio .



|#

#|------------------------------
Ejercicio .



|#

#|------------------------------
Ejercicio .



|#


