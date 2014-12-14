(define (problem extension1)
  (:domain viatge)

  (:objects
    ciutat1 ciutat2 ciutat3 ciutat4 - ciudad
    hotel1 hotel2 hotel3 hotel4 hotel5 - hotel
    vuelo1 vuelo2 vuelo3 vuelo4 - vuelo
  )

  (:init
  	(inicial)
    (ciudad-empty ciutat1)
    (ciudad-empty ciutat2)
    (ciudad-empty ciutat3)
    (ciudad-empty ciutat4)
    (es-de ciutat1 hotel1)
    (es-de ciutat1 hotel5)
    (es-de ciutat2 hotel2)
    (es-de ciutat3 hotel3)
    (es-de ciutat4 hotel4)
    (= (dias-ciudad ciutat1) 0)
    (= (dias-ciudad ciutat2) 0)
    (= (dias-ciudad ciutat3) 0)
    (= (dias-ciudad ciutat4) 0)
    (va-a vuelo1 ciutat1 ciutat2)
    (va-a vuelo2 ciutat2 ciutat3)
    (va-a vuelo3 ciutat3 ciutat1)
    (va-a vuelo4 ciutat3 ciutat4)
    (= (actual) 0)
    (= (dias-totales) 0)
    (= (ciudades-totales) 4)  	
    (= (min-dias-totales) 6)
    (= (min-dias-ciudad) 1)
    (= (max-dias-ciudad) 10)
  ) 

  (:goal
  	(and (= (actual) (ciudades-totales)) (>= (dias-totales) (min-dias-totales)))
  )
)
