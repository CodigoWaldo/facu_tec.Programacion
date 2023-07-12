

#|
-identificar pais
-saber si jugó en un partido
-contar las veces que jugó
-necesito el pais XD
-eliminar repetidos
-fusionar la lista de paises con cantidad de veeces que jugó
|#


(define obtenerPais(lambda (lista)
                     (if (null? lista)
                         ()
                         (car lista)
                         )))


;;;;;;;;;;;;;;;;;;;; thanks nague
(define jugo(lambda (pais partido)
              (let ((pais1 (obtenerPais (car partido))) (pais2 (obtenerPais (car (cdr partido)))))
                (if (equal? pais1 pais)
                    #t
                    (if (equal? pais2 pais)
                        #t
                        #f
                        )
                    )
                )
              ))

(define contar(lambda (pais partidos)
                    (if (empty? partidos)
                        0
                        (if (jugo pais (car partidos))
                            (+ (contar pais (cdr partidos)) 1)
                            (contar pais (cdr partidos))
                            )
                        )
                    ))
;;;;;;;;;;;;;;;;;;;;


(define extraerPaises( lambda (listaPaises)
                        (if (null? listaPaises)
                            '()
                            (let ( (paisA (car(car(car listaPaises)))) (paisB (caar(cdr(car listaPaises)))))
                              (cons paisA (cons paisB (extraerPaises (cdr listaPaises))))))))


(define elementoPresente( lambda (elemento lista)
                           (if (null? lista)
                               #f
                               (if (equal? elemento (car lista))
                                   #t
                                   (elementoPresente elemento (cdr lista))))))                                    


(define eliminarRepetidos( lambda (lista)
                            (if (null? lista)
                                '()
                                (let ((nuevaLista (eliminarRepetidos(cdr lista))))
                                  (if (elementoPresente (car lista) nuevaLista)
                                      nuevaLista
                                      (cons (car lista) nuevaLista)
                                      )))))


(define fusionar(lambda (listaPaises listaPartidos)
                  (if (null? listaPaises)
                      '()
                      (cons (cons (car listaPaises) (contar (car listaPaises) listaPartidos)) (fusionar (cdr listaPaises) listaPartidos )))))

                                               
(define identificar(lambda (lista)
                     (fusionar (eliminarRepetidos(extraerPaises lista)) lista)       
                     ))

(identificar '( ( (Argentina . 5) (Brasil . 0 ) ) 
                ( (Argentina . 3) (Bolivia . 2) )
                ( (Argentina . 2) (Chile . 1) )
                ( (Bolivia . 1) (Paraguay . 0) )
                ( (Brasil . 1) (Venezuela . 0) )
                ( (Colombia . 0) (Ecuador . 2) )
                ( (Brasil . 2) (Ecuador . 1) ) 
                ) )



;(jugo "Argentina '( (Argentina . 5) (Brasil . 0 ) ))

;((Argentina . 3) (Brasil . 3) (Bolivia . 2) (Chile . 1) (Paraguay . 1) (Venezuela . 1) (Colombia . 1) (Ecuador . 2))
