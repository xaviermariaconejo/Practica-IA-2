(define (problem primer-viatge)
	
  (:domain viatge)

  (:objects
    ciutat1 ciutat2 ciutat3 ciutat4 ciutat5 - ciudad
    hotel1 hotel2 hotel3 hotel4 hotel5 - hotel
    vuelo1 vuelo2 vuelo3 vuelo4 vuelo5 - vuelo
  )

  (:init
  	(inicial)
    (ciudad-empty ciutat1)
    (ciudad-empty ciutat2)
    (ciudad-empty ciutat3)
    (ciudad-empty ciutat4)
    (ciudad-empty ciutat5)
    (es-de ciutat1 hotel1)
    (es-de ciutat2 hotel2)
    (es-de ciutat3 hotel3)
    (es-de ciutat4 hotel4)
    (es-de ciutat5 hotel5)
    (va-a vuelo1 ciutat1 ciutat2)
    (va-a vuelo2 ciutat2 ciutat3)
    (va-a vuelo3 ciutat3 ciutat4)
    (va-a vuelo4 ciutat4 ciutat5)
    (va-a vuelo5 ciutat2 ciutat5)
    (= (dias-ciudad ciutat1) 0)
    (= (dias-ciudad ciutat2) 0)
    (= (dias-ciudad ciutat3) 0)
    (= (dias-ciudad ciutat4) 0)
    (= (dias-ciudad ciutat5) 0)
    (= (interes ciutat1) 1)
    (= (interes ciutat2) 1)
    (= (interes ciutat3) 1)
    (= (interes ciutat4) 1)
    (= (interes ciutat5) 1)
    (= (actual) 0)
    (= (ciudades-totales) 1)
    (= (min-dias-totales) 10)
    (= (min-dias-ciudad) 1)
    (= (max-dias-ciudad) 10)
    (= (dias-totales) 0)
    (= (interes-total) 0)
  	
  ) 
  
  (:goal
  	(and (= (actual) (ciudades-totales)) (>= (dias-totales) (min-dias-totales)))
  )

  (:metric minimize (interes-total))
)
