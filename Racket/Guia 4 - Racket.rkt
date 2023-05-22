;Ejercicio 1
(define-struct punto(x y)) ;Estructura de punto

(define dif-y-cuadrado
  (lambda (V1 V2)
    (expt (- V1 V2) 2)
    ))

(define distancePoints
  (lambda (P1 P2)
    (sqrt (+ (dif-y-cuadrado (punto-x P1)(punto-x P2))
             (dif-y-cuadrado (punto-y P1)(punto-y P2))
             ))))

(define P1 (make-punto 0 0))
(define P2 (make-punto 1 1))

;Ejercicio 2
(define-struct punto3D(x y z))

(define sumaPuntos
  (lambda (lista)
    (if (null? lista)
        '(0 0 0)
        (let ( (A1 (car lista)) (A2 (cdr lista)) )
          (map + (list (punto3D-x A1)(punto3D-y A1)(punto3D-z A1)) (sumaPuntos A2))
          ))))

(define division
  (lambda (lista largo)
    (map (lambda (x) (/ x largo)) lista) ;map le aplica lambda(x) a cada elem de la lista    
    ))


(define wrapperEj2
  (lambda (listaPuntos)
    (if (null? listaPuntos)
        null
        (division (sumaPuntos listaPuntos) (length listaPuntos))
        )))

(define PA (make-punto3D 0 0 0))
(define PB (make-punto3D 1 1 1))
(define PC (make-punto3D 2 2 2))

;Ejercicio 3

;-----

;Ejercicio 4
(define cont-char-aux
  (lambda (ch n)
    (if (eof-object? (read-char ch))
        n
        (+ 1 (cont-char-aux ch n)))))

(define contador-caracteres
  (lambda (puntero)
    (cont-char-aux puntero 0)))

(define pointerText (open-input-file "texto.txt"))
;(contador-caracteres pointerText)
(close-input-port pointerText)

(define cont-palab-aux
  (lambda (w n)
    (if (eof-object? (read w))
        n
        (+ 1 (cont-palab-aux w n)))))

(define contador-palabras
  (lambda (puntero)
    (cont-palab-aux puntero 0)))

(define pointerText (open-input-file "texto.txt"))
;(contador-palabras pointerText)
(close-input-port pointerText)

;Ejercicio 5
(define leerTexto
  (lambda (pointer)
    (let ((ch (read-line pointer)))
             (if (eof-object? ch)
                 (display "")
                 (and (display ch)(leerTexto pointer))))
    ))

(define pointerText (open-input-file "texto.txt"))
;(leerTexto pointerText)
(close-input-port pointerText)

;Ejercicio 6
;--------- peso de cada palabra
(define peso2
  (lambda (chList)    
    (if (null? chList)        
        0        
        (+ (char->integer (car chList)) (peso2 (cdr chList)))
          )))

(define peso ;función que devuelve el peso de la palabra
  (lambda (palabra)
    (peso2 (string->list palabra))))


;-------- encontrar el elemento de menor peso ascii
(define menorPeso
  (lambda (List)
    (if (null? List)
        ()
        (let ((p (car List))(r (cdr List)))
          (if (null? r)
              p
              (if (< (peso p)(peso (car r)))
                  (menorPeso (cons p (cdr r)))
                  (menorPeso r))
              )))))

;-------- eliminar un elemento de la lista
(define delet
  (lambda (E L)
    (if (null? L)
        ()
        (let ((Prim (car L))(Resto (cdr L)))
          (if(eqv? E Prim)
             Resto
             (cons Prim (delet E Resto))
             )))))

(define ordenar  ; construyo la lista con el elem de menor peso ascii, lo elimino  y uso el resto p/ recursividad.
  (lambda (ls)
    (if (null? ls)
        ()
        (cons (menorPeso ls) (ordenar (delet (menorPeso ls) ls)))
        )))

;(ordenar '("AAAA" "AA" "AAA"))

;Ejercicio 7 (fullreverse-list (1 (2 3 4 (4 5) (3 (5 6)) 4))) --> (4 ((6 5) 3) (5 4) 4 3 2) 1)
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


