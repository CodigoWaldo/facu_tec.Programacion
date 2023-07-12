

#|
*** atomizacion de las funciones ***
1-ver tipo de comida
2- ver calorias
3-hacer dos listas, una para carnivoros y otra para vegetarianos
-ordenar la lista

|#


;1)
(define tipoComida(lambda (lista)
  (car(cdr lista))))

;2)
(define calorias(lambda (lista) 
  (car(cdr(cdr lista)))))

;ordenar
(define (ordenar lista)
  (if (null? lista)
      '()
      (insertar-en-orden (car lista) (ordenar (cdr lista)))))


(define (insertar-en-orden elemento lista-ordenada)
  (if (null? lista-ordenada)
      (list elemento)
      (if (< (calorias elemento) (calorias(car lista-ordenada)))
          (cons elemento lista-ordenada)
          (cons (car lista-ordenada) 
                (insertar-en-orden elemento 
                                   (cdr lista-ordenada))))))


;lista carnivora
(define listaCarnivora(lambda (listaDeListas caloriasTotales)
  (if (null? listaDeListas)
      '()      
      (if (and (or (equal? "carnívoro" (tipoComida (car listaDeListas))) (equal? "ambos" (tipoComida (car listaDeListas))) )(< caloriasTotales 500))
          (if (< (+ caloriasTotales (calorias (car listaDeListas))) 500)
              (cons (caar  listaDeListas) (listaCarnivora (cdr listaDeListas) (+ caloriasTotales (calorias (car listaDeListas)))))
              (listaCarnivora (cdr listaDeListas) caloriasTotales))
          (listaCarnivora (cdr listaDeListas) caloriasTotales)))))

;lista vegetariana
(define listaVegetariana(lambda (listaDeListas caloriasTotales)
  (if (null? listaDeListas)
      '()      
      (if (and (or (equal? "vegetariano" (tipoComida (car listaDeListas))) (equal? "ambos" (tipoComida (car listaDeListas))) )(< caloriasTotales 500))
          (if (< (+ caloriasTotales (calorias (car listaDeListas))) 500)
              (cons (caar  listaDeListas) (listaVegetariana (cdr listaDeListas) (+ caloriasTotales (calorias (car listaDeListas)))))
              (listaVegetariana (cdr listaDeListas) caloriasTotales))
          (listaVegetariana (cdr listaDeListas) caloriasTotales)))))



;wrapper
(define dieta(lambda (listaDePlatos)
               (cons (listaCarnivora (ordenar listaDePlatos) 0) (cons (listaVegetariana (ordenar listaDePlatos) 0) '()))))


(dieta '(("papa" "vegetariano" 80)
         ("milanesa de carne" "carnívoro" 150)
         ("jugo de naranja" "vegetariano" 70)
         ("calabaza" "vegetariano" 90)
         ("costeleta" "carnívoro" 180)
         ("tiramisú" "ambos" 150)
         ("pastas" "ambos" 100)
         ("gaseosa" "ambos" 220)
         ("pan" "ambos" 110)
         ("chocolate" "ambos" 400)
         ("espárragos" "vegetariano" 60)
         ("empanadas de carne" "carnívoro" 200)
         ("chocolate""ambos" 400)
         ("espárragos" "vegetariano" 60)
         ("empanadas de carne" "carnívoro" 200)) )


