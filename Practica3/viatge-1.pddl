(define (problem primer-viatge)
	
  (:domain viatge)

  (:objects
    ciutat1 ciutat2 ciutat3  - ciudad
    hotel1 hotel2 hotel3 hotel4 hotel5 - hotel
    vuelo1 vuelo2 vuelo3 vuelo4 - vuelo
  )

  (:init
  	(inicial)
    (ciudad-empty ciutat1)
    (ciudad-empty ciutat2)
    (ciudad-empty ciutat3)
    (es-de ciutat1 hotel1)
    (es-de ciutat1 hotel2)
    (es-de ciutat2 hotel3)
    (es-de ciutat2 hotel4)
    (es-de ciutat3 hotel5)
    (va-a vuelo1 ciutat1 ciutat3)
    (va-a vuelo2 ciutat2 ciutat3)
    (va-a vuelo3 ciutat1 ciutat2)
    (va-a vuelo4 ciutat3 ciutat2)
    (= (dias-ciudad ciutat1) 0)
    (= (dias-ciudad ciutat2) 0)
    (= (dias-ciudad ciutat3) 0)
    (= (precio-hotel hotel1) 5)
    (= (precio-hotel hotel2) 6)
    (= (precio-hotel hotel3) 4)
    (= (precio-hotel hotel4) 3)
    (= (precio-hotel hotel5) 7)
    (= (precio-vuelo vuelo1) 6)
    (= (precio-vuelo vuelo2) 4)
    (= (precio-vuelo vuelo3) 3)
    (= (precio-vuelo vuelo4) 7)
    (= (interes ciutat1) 1)
    (= (interes ciutat2) 2)
    (= (interes ciutat3) 1)
    (= (actual) 0)
    (= (ciudades-totales) 2)
    (= (min-dias-totales) 3)
    (= (min-dias-ciudad ciudad1) 2)
    (= (max-dias-ciudad ciudad1) 4)
    (= (min-dias-ciudad ciudad2) 2)
    (= (max-dias-ciudad ciudad2) 4)
    (= (min-dias-ciudad ciudad3) 2)
    (= (max-dias-ciudad ciudad3) 4)
    (= (dias-totales) 0)
    (= (interes-total) 0)
    (= (precio-total) 0)
  	
  ) 
  (:metric minimize (+ (* (interes-total) 2) (* (precio-total) 0)))

  (:goal
  	(and (= (actual) (ciudades-totales)) (>= (dias-totales) (min-dias-totales)))
  )
)
