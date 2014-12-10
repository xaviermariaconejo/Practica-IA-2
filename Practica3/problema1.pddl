(define (problem problema1)
  (:domain viatge)

  (:objects
    ciutat-1 ciutat-2 ciutat-3 ciutat-4 ciutat-5 ciutat-6 ciutat-7 ciutat-8 ciutat-9 ciutat-10  - ciudad
    hotel-1 hotel-2 hotel-3 hotel-4 hotel-5 hotel-6 hotel-7 hotel-8 hotel-9 hotel-10 hotel-11 hotel-12 hotel-13 hotel-14 hotel-15 hotel-16 hotel-17 hotel-18 hotel-19 hotel-20 hotel-21 hotel-22 hotel-23  - hotel
    vol-1 vol-2 vol-3 vol-4 vol-5 vol-6 vol-7 vol-8 vol-9 vol-10 vol-11 vol-12 vol-13 vol-14 vol-15 vol-16 vol-17 vol-18 vol-19 vol-20 vol-21 vol-22 vol-23  - vuelo
  )

  (:init
    (inicial)
    (= (actual) 0)
    (= (min-dias-totales) 3)
    (= (ciudades-totales) 5)
    (= (dias-totales) 0)
    (= (interes-total) 0)
    (= (precio-total) 0)
    (ciudad-empty ciutat-1)
    (= (min-dias-ciudad ciutat-1) 0)
    (= (max-dias-ciudad ciutat-1) 2)
    (ciudad-empty ciutat-2)
    (= (min-dias-ciudad ciutat-2) 0)
    (= (max-dias-ciudad ciutat-2) 3)
    (ciudad-empty ciutat-3)
    (= (min-dias-ciudad ciutat-3) 2)
    (= (max-dias-ciudad ciutat-3) 3)
    (ciudad-empty ciutat-4)
    (= (min-dias-ciudad ciutat-4) 2)
    (= (max-dias-ciudad ciutat-4) 3)
    (ciudad-empty ciutat-5)
    (= (min-dias-ciudad ciutat-5) 2)
    (= (max-dias-ciudad ciutat-5) 5)
    (ciudad-empty ciutat-6)
    (= (min-dias-ciudad ciutat-6) 2)
    (= (max-dias-ciudad ciutat-6) 2)
    (ciudad-empty ciutat-7)
    (= (min-dias-ciudad ciutat-7) 1)
    (= (max-dias-ciudad ciutat-7) 2)
    (ciudad-empty ciutat-8)
    (= (min-dias-ciudad ciutat-8) 1)
    (= (max-dias-ciudad ciutat-8) 5)
    (ciudad-empty ciutat-9)
    (= (min-dias-ciudad ciutat-9) 2)
    (= (max-dias-ciudad ciutat-9) 2)
    (ciudad-empty ciutat-10)
    (= (min-dias-ciudad ciutat-10) 0)
    (= (max-dias-ciudad ciutat-10) 5)
    (= (interes ciutat-1) 2)
    (= (interes ciutat-2) 1)
    (= (interes ciutat-3) 5)
    (= (interes ciutat-4) 5)
    (= (interes ciutat-5) 4)
    (= (interes ciutat-6) 4)
    (= (interes ciutat-7) 1)
    (= (interes ciutat-8) 3)
    (= (interes ciutat-9) 3)
    (= (interes ciutat-10) 3)
    (es-de ciutat-1 hotel-1)
    (es-de ciutat-1 hotel-2)
    (es-de ciutat-1 hotel-3)
    (es-de ciutat-1 hotel-4)
    (es-de ciutat-2 hotel-5)
    (es-de ciutat-3 hotel-6)
    (es-de ciutat-4 hotel-7)
    (es-de ciutat-4 hotel-8)
    (es-de ciutat-5 hotel-9)
    (es-de ciutat-6 hotel-10)
    (es-de ciutat-6 hotel-11)
    (es-de ciutat-6 hotel-12)
    (es-de ciutat-6 hotel-13)
    (es-de ciutat-7 hotel-14)
    (es-de ciutat-7 hotel-15)
    (es-de ciutat-7 hotel-16)
    (es-de ciutat-7 hotel-17)
    (es-de ciutat-8 hotel-18)
    (es-de ciutat-8 hotel-19)
    (es-de ciutat-9 hotel-20)
    (es-de ciutat-9 hotel-21)
    (es-de ciutat-10 hotel-22)
    (= (precio-hotel hotel-1) 214)
    (= (precio-hotel hotel-2) 167)
    (= (precio-hotel hotel-3) 107)
    (= (precio-hotel hotel-4) 81)
    (= (precio-hotel hotel-5) 64)
    (= (precio-hotel hotel-6) 68)
    (= (precio-hotel hotel-7) 72)
    (= (precio-hotel hotel-8) 114)
    (= (precio-hotel hotel-9) 175)
    (= (precio-hotel hotel-10) 181)
    (= (precio-hotel hotel-11) 136)
    (= (precio-hotel hotel-12) 141)
    (= (precio-hotel hotel-13) 173)
    (= (precio-hotel hotel-14) 207)
    (= (precio-hotel hotel-15) 186)
    (= (precio-hotel hotel-16) 58)
    (= (precio-hotel hotel-17) 59)
    (= (precio-hotel hotel-18) 101)
    (= (precio-hotel hotel-19) 169)
    (= (precio-hotel hotel-20) 78)
    (= (precio-hotel hotel-21) 196)
    (= (precio-hotel hotel-22) 142)
    (= (precio-hotel hotel-23) 198)
    (va-a vol-1 ciutat-1 ciutat-3)
    (va-a vol-2 ciutat-1 ciutat-4)
    (va-a vol-3 ciutat-1 ciutat-7)
    (va-a vol-4 ciutat-1 ciutat-8)
    (va-a vol-5 ciutat-1 ciutat-9)
    (va-a vol-6 ciutat-3 ciutat-8)
    (va-a vol-7 ciutat-3 ciutat-9)
    (va-a vol-8 ciutat-4 ciutat-1)
    (va-a vol-9 ciutat-4 ciutat-3)
    (va-a vol-10 ciutat-4 ciutat-5)
    (va-a vol-11 ciutat-6 ciutat-9)
    (va-a vol-12 ciutat-7 ciutat-2)
    (va-a vol-13 ciutat-7 ciutat-6)
    (va-a vol-14 ciutat-7 ciutat-9)
    (va-a vol-15 ciutat-8 ciutat-7)
    (va-a vol-16 ciutat-9 ciutat-7)
    (va-a vol-17 ciutat-9 ciutat-8)
    (va-a vol-18 ciutat-10 ciutat-1)
    (va-a vol-19 ciutat-10 ciutat-4)
    (va-a vol-20 ciutat-10 ciutat-6)
    (va-a vol-21 ciutat-10 ciutat-7)
    (va-a vol-22 ciutat-10 ciutat-9)
  )
  (:metric minimize (+ (* (interes-total) 2) (* (precio-total) 0)))

  (:goal
  	(and (= (actual) (ciudades-totales)) (>= (dias-totales) (min-dias-totales)))
  )
)