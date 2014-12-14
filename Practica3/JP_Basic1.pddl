(define (problem basic)
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
    (es-de ciutat2 hotel2)
    (es-de ciutat3 hotel3)
    (es-de ciutat4 hotel4)
    (es-de ciutat4 hotel5)
    (va-a vuelo1 ciutat1 ciutat2)
    (va-a vuelo2 ciutat2 ciutat4)
    (va-a vuelo3 ciutat4 ciutat2)
    (va-a vuelo4 ciutat2 ciutat1)
    (= (actual) 0)
    (= (ciudades-totales) 3)  	
  ) 

  (:goal
  	(= (actual) (ciudades-totales))
  )
)
