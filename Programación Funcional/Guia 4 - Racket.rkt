;Guia 4: map, foreach, stuct, files

;--------------------------
;Ejercicio 1

(define-struct punto(x y))

(define dif-Y-cuadrado
  (lambda (valor1 valor2)
    (expt (- valor2 valor1) 2)
    ))

(define dist-puntos 
  (lambda (puntoA puntoB)
    (sqrt (+ (dif-Y-cuadrado (punto-x puntoA) (punto-x puntoB))
             (dif-Y-cuadrado (punto-y puntoA) (punto-y puntoB))
             ))
    ))

(define puntoA (make-punto 0 0))
(define puntoB (make-punto 3 3))

;(dist-puntos puntoA puntoB)

;--------------------------
;Ejercicio 2

(define-struct punto3d(x y z))


(define sumapuntos3d(lambda (lista)
                      (if (null? lista)
                          '( 0 0 0 )  
                          (let ( (aux1 (car lista)) (aux2 (cdr lista)) )
                            (map + (list (punto3d-x aux1)
                                         (punto3d-y aux1)
                                         (punto3d-z aux1)) (sumapuntos3d aux2))
                            ))))

(define division (lambda (lista largo)
                   (map (lambda (x) (/ x largo)) lista)))

(define foo (lambda (lista)
              (if (null? lista)
                  null
                  (let ( (suma (sumapuntos3d lista)) (largo (length lista)) )
                    (division suma largo))
                  ))) 


(define puntoA (make-punto3d 0 0 0))
(define puntoB (make-punto3d 1 1 1))
(define puntoC (make-punto3d 2 2 2))

;(foo (list puntoA puntoB puntoC))
;--------------------------
;Ejercicio 3

   
(define maxDist (lambda (l)                 
                 ( map (lambda (x) (dist-puntos (car l) x )) (cdr l))
                  ))
                  

(define puntoA (make-punto 0 0))
(define puntoB (make-punto 3 3))

;(maxDist (list puntoA puntoB))

;--------------------------
;Ejercicio 4

(define puntero (open-input-file "Texto.txt"))

(define contar-palabras
  (lambda (pointer)    
    (if (eof-object?(read pointer))
        0
        (+ 1 (contar-palabras pointer))
        )))

(define puntero (open-input-file "Texto.txt"))
;(and (display "palabras contadas: ")(contar-palabras puntero))
(close-input-port puntero)

(define contar-caracteres
  (lambda (pointer)    
    (if (eof-object?(read-char pointer))
        0
        (+ 1 (contar-caracteres pointer))
        )))

(define puntero (open-input-file "Texto.txt"))
;(and (display "caracteres contados: ")(contar-caracteres puntero))
(close-input-port puntero)

;--------------------------
;Ejercicio 5

(define puntero (open-input-file "Texto.txt"))

(define leer-txt
  (lambda (pointer) 
    (let ((aux (read-line pointer))) ;establece una variable aux string
     (if (eof-object? aux) ;eof, pregunta si aux es el final del archivo
         (display "") ;caso true
         (and (display aux)(leer-txt pointer)) ;and ejecuta dos comandos, lee el auxiliar y llama a la recursiva    
     ))))

;(leer-txt puntero)
(close-input-port puntero)

;--------------------------
;Ejercicio 6

;obtener el peso de cada palabra string

(define peso2 (lambda (p)
               (if (null? p)
                   0
                   (let ((j (car p)) (k (cdr p)))
                     (+ (char->integer j) (peso2 k))))))

(define peso (lambda (p)
                       (peso2 (string->list p))))

;se filtra el elemento con menor peso ascii

(define menor (lambda (l)
                    (if (null? l)
                        ()
                        (let ((j (car l)) (k(cdr l)))
                             (if (null? k)
                                 j    
                                 (if (< (peso j) (peso (car k)))
                                     (menor (cons j (cddr l)))
                                     (menor k)))))))


; se arma una lista con el elemento más liviano, se elimina de la lista original y se aplica recursividad

(define eliminarElemento (lambda (e l)
                           (if (null? l)
                               ()
                               (let ((j(car l)) (k(cdr l)))
                                 (if (eqv? e j)
                                     k
                                     (cons j (eliminarElemento e k)))))))

(define menorPeso (lambda (l) 
    (if (null? l)
        ()
        (cons (menor l) (menorPeso (eliminarElemento (menor l) l)))
        )))

;(menorPeso '("moto" "auto" "casa" "juego" "aire"))

;--------------------------
;Ejercicio 7

(define colocar (lambda (elem ls)
                  (if (null? ls)
                      (cons elem '())
                      (let ((p (car ls)) (r (cdr ls)))
                        (cons p (colocar elem r))))))

(define revertir (lambda (ls)
                   (if (null? ls)
                       '()
                       (let ((p (car ls)) (r (cdr ls)))
                         (colocar p (revertir r))))))

(define fullreverse-list (lambda (ls)
                           (revertir (map (lambda (e) (if (list? e)
                                                          (fullreverse-list e) e)) ls))))

;(fullreverse-list '(1 (2 3 4 (3 (5 6)) 4))) 

;--------------------------
;Ejercicio 8

(define concatenar ; concatenar listas
  (lambda (list1 list2)
    (if (null? list1)
        list2
        (cons (car list1) (concatenar (cdr list1) list2) )))) ;si la lista 1 no es vacia, se utiliza recursividad para juntar sus elementos en la lista 2

(define app2list
  (lambda (elem1 elem2)
    (if (list? elem1) ;es el elem1 una lista? 
;TRUE
        (if (list? elem2) ;es el elem2 una lista?
           (concatenar elem1 elem2) ;junta las listas
           (cons elem2 elem1)) ;añade el elem2 a lista
;FALSE
        (if (list? elem2) 
           (cons elem1 elem2)
           (cons elem1 (cons elem2 '()))) 
           )))

;(app2list 'a '(b c))
;(app2list '(a b) '(c d))
;(app2list 'a 'b)
;(app2list '(a b) 'c)