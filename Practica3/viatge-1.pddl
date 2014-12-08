(define (problem primer-viatge)
	
  (:domain viatge)

  (:objects
    ciutat1 ciutat2 ciutat3  - ciudad
    hotel1 hotel2 hotel3 hotel4 hotel5 - hotel
    vuelo1 vuelo2 vuelo3 vuelo4 - vuelo
  )

  (:init
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
    (= (actual) 0)
    (= (ciudades-totales) 2)
    (= (min-dias-totales) 5)
    (= (min-dias-ciudad) 2)
    (= (max-dias-ciudad) 3)
    (= (dias-totales) 0)
  	
  ) 

  (:goal
  	(and (= (actual) (ciudades-totales)) (>= (dias-totales) (min-dias-totales)))
  )
)
