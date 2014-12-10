(define (problem problema2)
  (:domain viatge)

  (:objects
    ciutat-1 ciutat-2 ciutat-3 ciutat-4 ciutat-5 ciutat-6 ciutat-7 ciutat-8 ciutat-9 ciutat-10  - ciudad
    hotel-1 hotel-2 hotel-3 hotel-4 hotel-5 hotel-6 hotel-7 hotel-8 hotel-9 hotel-10 hotel-11 hotel-12 hotel-13 hotel-14 hotel-15 hotel-16 hotel-17 hotel-18 hotel-19 hotel-20 hotel-21  - hotel
    vol-1 vol-2 vol-3 vol-4 vol-5 vol-6 vol-7 vol-8 vol-9 vol-10 vol-11 vol-12 vol-13 vol-14 vol-15 vol-16 vol-17 vol-18 vol-19 vol-20 vol-21 vol-22 vol-23 vol-24 vol-25 vol-26 vol-27 vol-28  - vuelo
  )

  (:init
    (inicial)
    (= (actual) 0)
    (= (min-dias-totales) 6)
    (= (ciudades-totales) 3)
    (= (dias-totales) 0)
    (= (interes-total) 0)
    (= (precio-total) 0)
    (ciudad-empty ciutat-1)
    (= (dias-ciudad ciutat-1) 0)
    (= (min-dias-ciudad ciutat-1) 1)
    (= (max-dias-ciudad ciutat-1) 5)
    (ciudad-empty ciutat-2)
    (= (dias-ciudad ciutat-2) 0)
    (= (min-dias-ciudad ciutat-2) 0)
    (= (max-dias-ciudad ciutat-2) 3)
    (ciudad-empty ciutat-3)
    (= (dias-ciudad ciutat-3) 0)
    (= (min-dias-ciudad ciutat-3) 2)
    (= (max-dias-ciudad ciutat-3) 3)
    (ciudad-empty ciutat-4)
    (= (dias-ciudad ciutat-4) 0)
    (= (min-dias-ciudad ciutat-4) 1)
    (= (max-dias-ciudad ciutat-4) 4)
    (ciudad-empty ciutat-5)
    (= (dias-ciudad ciutat-5) 0)
    (= (min-dias-ciudad ciutat-5) 0)
    (= (max-dias-ciudad ciutat-5) 5)
    (ciudad-empty ciutat-6)
    (= (dias-ciudad ciutat-6) 0)
    (= (min-dias-ciudad ciutat-6) 1)
    (= (max-dias-ciudad ciutat-6) 2)
    (ciudad-empty ciutat-7)
    (= (dias-ciudad ciutat-7) 0)
    (= (min-dias-ciudad ciutat-7) 0)
    (= (max-dias-ciudad ciutat-7) 3)
    (ciudad-empty ciutat-8)
    (= (dias-ciudad ciutat-8) 0)
    (= (min-dias-ciudad ciutat-8) 0)
    (= (max-dias-ciudad ciutat-8) 5)
    (ciudad-empty ciutat-9)
    (= (dias-ciudad ciutat-9) 0)
    (= (min-dias-ciudad ciutat-9) 2)
    (= (max-dias-ciudad ciutat-9) 3)
    (ciudad-empty ciutat-10)
    (= (dias-ciudad ciutat-10) 0)
    (= (min-dias-ciudad ciutat-10) 1)
    (= (max-dias-ciudad ciutat-10) 4)
    (= (interes ciutat-1) 3)
    (= (interes ciutat-2) 2)
    (= (interes ciutat-3) 3)
    (= (interes ciutat-4) 3)
    (= (interes ciutat-5) 4)
    (= (interes ciutat-6) 1)
    (= (interes ciutat-7) 4)
    (= (interes ciutat-8) 3)
    (= (interes ciutat-9) 3)
    (= (interes ciutat-10) 3)
    (es-de ciutat-1 hotel-1)
    (es-de ciutat-1 hotel-2)
    (es-de ciutat-2 hotel-3)
    (es-de ciutat-3 hotel-4)
    (es-de ciutat-4 hotel-5)
    (es-de ciutat-5 hotel-6)
    (es-de ciutat-5 hotel-7)
    (es-de ciutat-6 hotel-8)
    (es-de ciutat-6 hotel-9)
    (es-de ciutat-7 hotel-10)
    (es-de ciutat-7 hotel-11)
    (es-de ciutat-8 hotel-12)
    (es-de ciutat-8 hotel-13)
    (es-de ciutat-8 hotel-14)
    (es-de ciutat-9 hotel-15)
    (es-de ciutat-9 hotel-16)
    (es-de ciutat-9 hotel-17)
    (es-de ciutat-9 hotel-18)
    (es-de ciutat-10 hotel-19)
    (es-de ciutat-10 hotel-20)
    (= (precio-hotel hotel-1) 171)
    (= (precio-hotel hotel-2) 184)
    (= (precio-hotel hotel-3) 112)
    (= (precio-hotel hotel-4) 163)
    (= (precio-hotel hotel-5) 114)
    (= (precio-hotel hotel-6) 199)
    (= (precio-hotel hotel-7) 217)
    (= (precio-hotel hotel-8) 112)
    (= (precio-hotel hotel-9) 86)
    (= (precio-hotel hotel-10) 195)
    (= (precio-hotel hotel-11) 148)
    (= (precio-hotel hotel-12) 156)
    (= (precio-hotel hotel-13) 165)
    (= (precio-hotel hotel-14) 65)
    (= (precio-hotel hotel-15) 212)
    (= (precio-hotel hotel-16) 213)
    (= (precio-hotel hotel-17) 216)
    (= (precio-hotel hotel-18) 196)
    (= (precio-hotel hotel-19) 241)
    (= (precio-hotel hotel-20) 66)
    (= (precio-hotel hotel-21) 136)
    (va-a vol-1 ciutat-1 ciutat-2)
    (va-a vol-2 ciutat-2 ciutat-4)
    (va-a vol-3 ciutat-2 ciutat-5)
    (va-a vol-4 ciutat-2 ciutat-6)
    (va-a vol-5 ciutat-3 ciutat-2)
    (va-a vol-6 ciutat-3 ciutat-4)
    (va-a vol-7 ciutat-3 ciutat-5)
    (va-a vol-8 ciutat-3 ciutat-6)
    (va-a vol-9 ciutat-3 ciutat-7)
    (va-a vol-10 ciutat-3 ciutat-9)
    (va-a vol-11 ciutat-4 ciutat-1)
    (va-a vol-12 ciutat-4 ciutat-5)
    (va-a vol-13 ciutat-4 ciutat-10)
    (va-a vol-14 ciutat-5 ciutat-1)
    (va-a vol-15 ciutat-5 ciutat-10)
    (va-a vol-16 ciutat-6 ciutat-4)
    (va-a vol-17 ciutat-6 ciutat-7)
    (va-a vol-18 ciutat-6 ciutat-8)
    (va-a vol-19 ciutat-7 ciutat-5)
    (va-a vol-20 ciutat-7 ciutat-10)
    (va-a vol-21 ciutat-8 ciutat-6)
    (va-a vol-22 ciutat-9 ciutat-1)
    (va-a vol-23 ciutat-9 ciutat-3)
    (va-a vol-24 ciutat-9 ciutat-6)
    (va-a vol-25 ciutat-10 ciutat-3)
    (va-a vol-26 ciutat-10 ciutat-6)
    (va-a vol-27 ciutat-10 ciutat-9)
  )
  (:metric minimize (+ (* (interes-total) 2) (* (precio-total) 0)))

  (:goal
  	(and (= (actual) (ciudades-totales)) (>= (dias-totales) (min-dias-totales)))
  )
)