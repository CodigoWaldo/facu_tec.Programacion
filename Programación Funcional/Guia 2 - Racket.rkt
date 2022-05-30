;------------------------------------------
;Ejercicio 1

(define a 1)
(define b 2)
(define c 3)

;a)
(let ((x (* 7 a)))
      (+ (/ x b) (/ (* 3 a) b) (/ x b)))

;b)
(let ((x (list a b c)))
      (cons (car x) (cdr x)))

;------------------------------------------
;Ejercicio 2

#|
el valor de esta operación es 54, esto sucede por
que primero se define el valor de x=9
luego en le cuerpo de este primer let se multiplica x=9 por
otro x re definido en una segunda instancia de let (lets anidados),
el nuveo valor de x se define como x/3, quedando x
ahora con el valor de 3 (9/3). luego este let devuelve al primer let
x + x siendo en total 6.
finalmente el resultado será ( * 9 6) obteniendo como resultado 54
|#

;------------------------------------------
;Ejercicio 3

;a)
(let ((x 'a) (y 'b))
  (list (let ((z 'c))
          (cons z y))
        (let ((w 'd))
          (cons x w))))
;b)
(let ((x '((a b) c)))
  (cons (let ((v1 (cdr x)))
          (car v1)) ;devuelve c
        (let ((v2 (car x)))
          (cons (let ((v3 (cdr v2)))
                  (car v3)) ;devuelve b
                (cons (let ((v4 (car v2)))
                        v4) ;devuelve a
                      (cdr v2)))))) ;devuelve b

;------------------------------------------
;Ejercicio 4

(let ((f (lambda (x) x)))
(f 'a))
;a devuelve a si mismo

(let ((f (lambda x x)))
(f 'a))
;(a) ya que al no tener parentesis al principio asume que es una lista

(let ((f (lambda (x . y) x)))
(f 'a))
;a devuelve el primer elemento de la "lista"

(let ((f (lambda (x . y) y)))
(f 'a))
;() al devolver y de una lista de un elemento x(a), devuelve lista vacia

;------------------------------------------
;Ejercicio 5

(define scheme_sintaxis
  (lambda (lista) ;recibe la lista
    ( let ((num (car lista)) ;extrae el primer num
           (oper (cadr lista)) ;extrae el operador
           (num2 (cddr lista))) ;extrae el segundo num
                 ( cons oper (cons num num2)))));crea una lista re-ordenada
;(scheme_sintaxis '(3 + 5) ) ;se llama a la función

;------------------------------------------
;Ejercicio 6

(define shorter
  (lambda (lista1 lista2) ;recibe ambas listas
    (if (< (length lista2) (length lista1)) ;compara
        lista2 ;condición verdadera
        lista1 ;condición falsa
        )))

;------------------------------------------
;Ejercicio 7

(define circle_area
  (lambda (n)
    (* pi n n)))

;(circle_area 3)

;------------------------------------------
;Ejercicio 8

(define circle_perim
  (lambda (n)
    (* 2 pi n)))

;(circle_perim 1)

;------------------------------------------
;Ejercicio 9

(define concatenacion (lambda (n)
                        ( cons
                          (circle_area n) (cons (circle_perim n) '() ))))

;(concatenacion 3)

;------------------------------------------
;Ejercicio 10

(define distance2d
    (lambda (punto1 punto2) 
      (let ( (x (-(car punto2)(car punto1))) (y (- (cdr punto2)(cdr punto1))) )
           ( sqrt( + (* x x) (* y y)) )
           ))
      )

;(distance2d '(1 . 1) '(2 . 2))

;------------------------------------------
;Ejercicio 11

(define proximo(lambda (punto lista)
                 (if (null? lista)
                     (display "lista vacia")
                     (let ((d1 (distance2d punto (car lista))) (l (cdr lista)))
                       (if (null? l)
                           d1
                           (let ((d2 (proximo punto l)))
                             (if (< d2 d1)
                                 d1
                                 d2
                                 )))))))
         

(proximo '(5 . 5) '((1 . 1)(3 . 3)(2 . 2)))

