#|
La municipalidad de ciudad de Santa Fe necesita realizar un ranking
de las personas que se han postulado para el sorteo de viviendas que
esta realizando el departamento de Habitat a través de lineas de créditos provinciales.

Las personas que se anoten deben cargar su nombre y sus últimos 3 recibos de sueldos,
el promedio salarial de los participantes debe estar comprendido entre 55.000 y 63.000,
quienes no se encuentre dentro de ese rango deben ser descartados, y el orden del ranking es de manera descendente,
desde quien tiene el promedio salarial mas alto al mas bajo.

Ejemplos:

(ranking '( ("Federico" . (45000 60000 65000)) ("Virginia" . (60000 62000 65000))
            ("Gabriel" . (34000 40000 42000))  ("Mariano" . (54000 59000 63000) )
            ("Lucia" . (46000 55000 78000))    ("Pablo" . (76000 75000 79000)   )
           )

RTA: (("Virginia" . 62333,33) ("Lucia" . 59666,67) ("Mariano" . 58666,67) ("Federico" . 56666,67))
|#

;se suman los sueldos
(define suma (lambda (lista value)
               (if (null? lista)
                   0
                   (+ (car lista) (suma (cdr lista) value)))))

;se obtiene el promedio en 3
(define promedio (lambda (value)
                   (/ value 3)))

;armo un pequeño wrapper para analizar el sueldo
(define promSueldo(lambda (lista)
                    (let ((x (suma lista 0)))
                      (if (and (< (promedio x) 63000) (> (promedio x) 55000))
                          #t
                          #f))))


;descartar las personas con sueldo fuera del rango de 55.000 y 63.000
(define analizarSalario(lambda (lista)
                         (if (null? lista)
                             '()                             
                             (if (promSueldo(cdr(car lista)))
                                 (cons ( cons(car(car lista)) (cons (promedio(suma (cdr(car lista))0)) '())) (analizarSalario (cdr lista)))
                                 (analizarSalario (cdr lista))
                                 ))))

;ordenar de mayor a menor
(define ordenar (lambda (lista)
                  (if (null? lista)
                      '()
                      (insertar-en-orden (car lista) (ordenar (cdr lista))))))

(define insertar-en-orden (lambda (elemento lista-ordenada)
                            (if (null? lista-ordenada)
                                (list elemento)
                                (if (> (car(cdr elemento)) (car(cdr(car lista-ordenada))))
                                    (cons elemento lista-ordenada)
                                    (cons (car lista-ordenada)(insertar-en-orden elemento (cdr lista-ordenada)))))))

;wrapper
(define ranking(lambda (lista)
                 (ordenar(analizarSalario lista))))


(ranking '( ("Federico" . (45000 60000 65000)) ("Virginia" . (60000 62000 65000))
            ("Gabriel" . (34000 40000 42000))  ("Mariano" . (54000 59000 63000) )
            ("Lucia" . (46000 55000 78000))    ("Pablo" . (76000 75000 79000)   )
           ))
