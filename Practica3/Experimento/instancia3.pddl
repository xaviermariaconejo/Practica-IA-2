(define (problem instancia3)
  (:domain viatge)

  (:objects
    ciutat-1 ciutat-2 ciutat-3  - ciudad
    hotel-1 hotel-2 hotel-3 hotel-4  - hotel
    vol-1 vol-2 vol-3 vol-4 vol-5 vol-6 vol-7  - vuelo
  )

  (:init
    (inicial)
    (= (min-precio) 66)
    (= (max-precio) 859)
    (= (actual) 0)
    (= (min-dias-totales) 1)
    (= (ciudades-totales) 1)
    (= (dias-totales) 0)
    (= (precio-total) 0)
    (ciudad-empty ciutat-1)
    (= (dias-ciudad ciutat-1) 0)
    (ciudad-empty ciutat-2)
    (= (dias-ciudad ciutat-2) 0)
    (ciudad-empty ciutat-3)
    (= (dias-ciudad ciutat-3) 0)
    (= (min-dias-ciudad) 2)
    (= (max-dias-ciudad) 4)
    (es-de ciutat-1 hotel-1)
    (es-de ciutat-2 hotel-2)
    (es-de ciutat-3 hotel-3)
    (= (precio-hotel hotel-1) 171)
    (= (precio-hotel hotel-2) 53)
    (= (precio-hotel hotel-3) 175)
    (= (precio-hotel hotel-4) 138)
    (va-a vol-1 ciutat-1 ciutat-2)
    (va-a vol-2 ciutat-1 ciutat-3)
    (va-a vol-3 ciutat-2 ciutat-1)
    (va-a vol-4 ciutat-2 ciutat-3)
    (va-a vol-5 ciutat-3 ciutat-1)
    (va-a vol-6 ciutat-3 ciutat-2)
    (= (precio-vuelo vol-1) 117)
    (= (precio-vuelo vol-2) 126)
    (= (precio-vuelo vol-3) 74)
    (= (precio-vuelo vol-4) 59)
    (= (precio-vuelo vol-5) 111)
    (= (precio-vuelo vol-6) 116)
    (= (precio-vuelo vol-7) 86)
  )
  (:goal
  	(and (= (actual) (ciudades-totales)) (>= (dias-totales) (min-dias-totales)) (>= (precio-total) (min-precio)) (<= (precio-total) (max-precio))
  ))

  (:metric minimize (precio-total))
)
