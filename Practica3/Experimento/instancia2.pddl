(define (problem instancia2)
  (:domain viatge)

  (:objects
    ciutat-1 ciutat-2  - ciudad
    hotel-1 hotel-2 hotel-3  - hotel
    vol-1 vol-2 vol-3  - vuelo
  )

  (:init
    (inicial)
    (= (min-precio) 59)
    (= (max-precio) 677)
    (= (actual) 0)
    (= (min-dias-totales) 1)
    (= (ciudades-totales) 1)
    (= (dias-totales) 0)
    (= (precio-total) 0)
    (ciudad-empty ciutat-1)
    (= (dias-ciudad ciutat-1) 0)
    (ciudad-empty ciutat-2)
    (= (dias-ciudad ciutat-2) 0)
    (= (min-dias-ciudad) 1)
    (= (max-dias-ciudad) 2)
    (es-de ciutat-1 hotel-1)
    (es-de ciutat-2 hotel-2)
    (= (precio-hotel hotel-1) 243)
    (= (precio-hotel hotel-2) 170)
    (= (precio-hotel hotel-3) 83)
    (va-a vol-1 ciutat-1 ciutat-2)
    (va-a vol-2 ciutat-2 ciutat-1)
    (= (precio-vuelo vol-1) 118)
    (= (precio-vuelo vol-2) 68)
    (= (precio-vuelo vol-3) 68)
  )
  (:goal
  	(and (= (actual) (ciudades-totales)) (>= (dias-totales) (min-dias-totales)) (>= (precio-total) (min-precio)) (<= (precio-total) (max-precio))
  ))

  (:metric minimize (precio-total))
)
