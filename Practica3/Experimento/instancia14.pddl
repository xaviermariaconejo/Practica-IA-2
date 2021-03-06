(define (problem instancia14)
  (:domain viatge)

  (:objects
    ciutat-1 ciutat-2 ciutat-3 ciutat-4 ciutat-5 ciutat-6 ciutat-7 ciutat-8 ciutat-9 ciutat-10 ciutat-11 ciutat-12 ciutat-13 ciutat-14  - ciudad
    hotel-1 hotel-2 hotel-3 hotel-4 hotel-5 hotel-6 hotel-7 hotel-8 hotel-9 hotel-10 hotel-11 hotel-12 hotel-13 hotel-14 hotel-15  - hotel
    vol-1 vol-2 vol-3 vol-4 vol-5 vol-6 vol-7 vol-8 vol-9 vol-10 vol-11 vol-12 vol-13 vol-14 vol-15 vol-16 vol-17 vol-18 vol-19 vol-20 vol-21 vol-22 vol-23 vol-24 vol-25 vol-26 vol-27 vol-28 vol-29 vol-30 vol-31 vol-32 vol-33 vol-34 vol-35 vol-36 vol-37 vol-38 vol-39 vol-40 vol-41 vol-42 vol-43 vol-44 vol-45 vol-46 vol-47 vol-48 vol-49 vol-50 vol-51 vol-52 vol-53 vol-54 vol-55 vol-56 vol-57 vol-58 vol-59 vol-60 vol-61 vol-62 vol-63 vol-64 vol-65 vol-66 vol-67 vol-68 vol-69 vol-70 vol-71 vol-72 vol-73 vol-74 vol-75 vol-76 vol-77 vol-78 vol-79 vol-80  - vuelo
  )

  (:init
    (inicial)
    (= (min-precio) 366)
    (= (max-precio) 3948)
    (= (actual) 0)
    (= (min-dias-totales) 7)
    (= (ciudades-totales) 7)
    (= (dias-totales) 0)
    (= (precio-total) 0)
    (ciudad-empty ciutat-1)
    (= (dias-ciudad ciutat-1) 0)
    (ciudad-empty ciutat-2)
    (= (dias-ciudad ciutat-2) 0)
    (ciudad-empty ciutat-3)
    (= (dias-ciudad ciutat-3) 0)
    (ciudad-empty ciutat-4)
    (= (dias-ciudad ciutat-4) 0)
    (ciudad-empty ciutat-5)
    (= (dias-ciudad ciutat-5) 0)
    (ciudad-empty ciutat-6)
    (= (dias-ciudad ciutat-6) 0)
    (ciudad-empty ciutat-7)
    (= (dias-ciudad ciutat-7) 0)
    (ciudad-empty ciutat-8)
    (= (dias-ciudad ciutat-8) 0)
    (ciudad-empty ciutat-9)
    (= (dias-ciudad ciutat-9) 0)
    (ciudad-empty ciutat-10)
    (= (dias-ciudad ciutat-10) 0)
    (ciudad-empty ciutat-11)
    (= (dias-ciudad ciutat-11) 0)
    (ciudad-empty ciutat-12)
    (= (dias-ciudad ciutat-12) 0)
    (ciudad-empty ciutat-13)
    (= (dias-ciudad ciutat-13) 0)
    (ciudad-empty ciutat-14)
    (= (dias-ciudad ciutat-14) 0)
    (= (min-dias-ciudad) 1)
    (= (max-dias-ciudad) 4)
    (es-de ciutat-1 hotel-1)
    (es-de ciutat-2 hotel-2)
    (es-de ciutat-3 hotel-3)
    (es-de ciutat-4 hotel-4)
    (es-de ciutat-5 hotel-5)
    (es-de ciutat-6 hotel-6)
    (es-de ciutat-7 hotel-7)
    (es-de ciutat-8 hotel-8)
    (es-de ciutat-9 hotel-9)
    (es-de ciutat-10 hotel-10)
    (es-de ciutat-11 hotel-11)
    (es-de ciutat-12 hotel-12)
    (es-de ciutat-13 hotel-13)
    (es-de ciutat-14 hotel-14)
    (= (precio-hotel hotel-1) 169)
    (= (precio-hotel hotel-2) 127)
    (= (precio-hotel hotel-3) 135)
    (= (precio-hotel hotel-4) 113)
    (= (precio-hotel hotel-5) 199)
    (= (precio-hotel hotel-6) 171)
    (= (precio-hotel hotel-7) 81)
    (= (precio-hotel hotel-8) 177)
    (= (precio-hotel hotel-9) 211)
    (= (precio-hotel hotel-10) 46)
    (= (precio-hotel hotel-11) 87)
    (= (precio-hotel hotel-12) 51)
    (= (precio-hotel hotel-13) 165)
    (= (precio-hotel hotel-14) 187)
    (= (precio-hotel hotel-15) 100)
    (va-a vol-1 ciutat-1 ciutat-3)
    (va-a vol-2 ciutat-1 ciutat-6)
    (va-a vol-3 ciutat-1 ciutat-7)
    (va-a vol-4 ciutat-1 ciutat-9)
    (va-a vol-5 ciutat-1 ciutat-11)
    (va-a vol-6 ciutat-1 ciutat-12)
    (va-a vol-7 ciutat-1 ciutat-13)
    (va-a vol-8 ciutat-1 ciutat-14)
    (va-a vol-9 ciutat-2 ciutat-1)
    (va-a vol-10 ciutat-2 ciutat-3)
    (va-a vol-11 ciutat-2 ciutat-5)
    (va-a vol-12 ciutat-2 ciutat-8)
    (va-a vol-13 ciutat-2 ciutat-10)
    (va-a vol-14 ciutat-2 ciutat-11)
    (va-a vol-15 ciutat-2 ciutat-12)
    (va-a vol-16 ciutat-3 ciutat-6)
    (va-a vol-17 ciutat-3 ciutat-8)
    (va-a vol-18 ciutat-3 ciutat-14)
    (va-a vol-19 ciutat-4 ciutat-3)
    (va-a vol-20 ciutat-4 ciutat-5)
    (va-a vol-21 ciutat-4 ciutat-6)
    (va-a vol-22 ciutat-4 ciutat-9)
    (va-a vol-23 ciutat-4 ciutat-11)
    (va-a vol-24 ciutat-4 ciutat-13)
    (va-a vol-25 ciutat-4 ciutat-14)
    (va-a vol-26 ciutat-5 ciutat-1)
    (va-a vol-27 ciutat-5 ciutat-2)
    (va-a vol-28 ciutat-5 ciutat-3)
    (va-a vol-29 ciutat-5 ciutat-7)
    (va-a vol-30 ciutat-5 ciutat-11)
    (va-a vol-31 ciutat-5 ciutat-12)
    (va-a vol-32 ciutat-6 ciutat-8)
    (va-a vol-33 ciutat-6 ciutat-9)
    (va-a vol-34 ciutat-6 ciutat-10)
    (va-a vol-35 ciutat-6 ciutat-11)
    (va-a vol-36 ciutat-6 ciutat-12)
    (va-a vol-37 ciutat-6 ciutat-14)
    (va-a vol-38 ciutat-7 ciutat-3)
    (va-a vol-39 ciutat-7 ciutat-4)
    (va-a vol-40 ciutat-7 ciutat-9)
    (va-a vol-41 ciutat-7 ciutat-11)
    (va-a vol-42 ciutat-7 ciutat-14)
    (va-a vol-43 ciutat-8 ciutat-1)
    (va-a vol-44 ciutat-8 ciutat-3)
    (va-a vol-45 ciutat-8 ciutat-7)
    (va-a vol-46 ciutat-8 ciutat-9)
    (va-a vol-47 ciutat-8 ciutat-13)
    (va-a vol-48 ciutat-9 ciutat-4)
    (va-a vol-49 ciutat-9 ciutat-6)
    (va-a vol-50 ciutat-9 ciutat-7)
    (va-a vol-51 ciutat-9 ciutat-11)
    (va-a vol-52 ciutat-9 ciutat-12)
    (va-a vol-53 ciutat-9 ciutat-13)
    (va-a vol-54 ciutat-10 ciutat-1)
    (va-a vol-55 ciutat-10 ciutat-2)
    (va-a vol-56 ciutat-10 ciutat-6)
    (va-a vol-57 ciutat-10 ciutat-8)
    (va-a vol-58 ciutat-10 ciutat-9)
    (va-a vol-59 ciutat-10 ciutat-12)
    (va-a vol-60 ciutat-10 ciutat-13)
    (va-a vol-61 ciutat-10 ciutat-14)
    (va-a vol-62 ciutat-11 ciutat-3)
    (va-a vol-63 ciutat-11 ciutat-5)
    (va-a vol-64 ciutat-11 ciutat-7)
    (va-a vol-65 ciutat-11 ciutat-8)
    (va-a vol-66 ciutat-12 ciutat-5)
    (va-a vol-67 ciutat-12 ciutat-7)
    (va-a vol-68 ciutat-12 ciutat-8)
    (va-a vol-69 ciutat-12 ciutat-13)
    (va-a vol-70 ciutat-13 ciutat-5)
    (va-a vol-71 ciutat-13 ciutat-10)
    (va-a vol-72 ciutat-13 ciutat-11)
    (va-a vol-73 ciutat-13 ciutat-12)
    (va-a vol-74 ciutat-13 ciutat-14)
    (va-a vol-75 ciutat-14 ciutat-1)
    (va-a vol-76 ciutat-14 ciutat-3)
    (va-a vol-77 ciutat-14 ciutat-5)
    (va-a vol-78 ciutat-14 ciutat-10)
    (va-a vol-79 ciutat-14 ciutat-12)
    (= (precio-vuelo vol-1) 123)
    (= (precio-vuelo vol-2) 77)
    (= (precio-vuelo vol-3) 95)
    (= (precio-vuelo vol-4) 122)
    (= (precio-vuelo vol-5) 84)
    (= (precio-vuelo vol-6) 82)
    (= (precio-vuelo vol-7) 67)
    (= (precio-vuelo vol-8) 87)
    (= (precio-vuelo vol-9) 59)
    (= (precio-vuelo vol-10) 74)
    (= (precio-vuelo vol-11) 95)
    (= (precio-vuelo vol-12) 113)
    (= (precio-vuelo vol-13) 120)
    (= (precio-vuelo vol-14) 82)
    (= (precio-vuelo vol-15) 76)
    (= (precio-vuelo vol-16) 117)
    (= (precio-vuelo vol-17) 89)
    (= (precio-vuelo vol-18) 122)
    (= (precio-vuelo vol-19) 129)
    (= (precio-vuelo vol-20) 112)
    (= (precio-vuelo vol-21) 70)
    (= (precio-vuelo vol-22) 75)
    (= (precio-vuelo vol-23) 78)
    (= (precio-vuelo vol-24) 81)
    (= (precio-vuelo vol-25) 40)
    (= (precio-vuelo vol-26) 57)
    (= (precio-vuelo vol-27) 68)
    (= (precio-vuelo vol-28) 50)
    (= (precio-vuelo vol-29) 78)
    (= (precio-vuelo vol-30) 39)
    (= (precio-vuelo vol-31) 73)
    (= (precio-vuelo vol-32) 91)
    (= (precio-vuelo vol-33) 96)
    (= (precio-vuelo vol-34) 49)
    (= (precio-vuelo vol-35) 101)
    (= (precio-vuelo vol-36) 82)
    (= (precio-vuelo vol-37) 64)
    (= (precio-vuelo vol-38) 59)
    (= (precio-vuelo vol-39) 35)
    (= (precio-vuelo vol-40) 90)
    (= (precio-vuelo vol-41) 31)
    (= (precio-vuelo vol-42) 52)
    (= (precio-vuelo vol-43) 67)
    (= (precio-vuelo vol-44) 48)
    (= (precio-vuelo vol-45) 73)
    (= (precio-vuelo vol-46) 52)
    (= (precio-vuelo vol-47) 43)
    (= (precio-vuelo vol-48) 72)
    (= (precio-vuelo vol-49) 49)
    (= (precio-vuelo vol-50) 126)
    (= (precio-vuelo vol-51) 109)
    (= (precio-vuelo vol-52) 69)
    (= (precio-vuelo vol-53) 128)
    (= (precio-vuelo vol-54) 107)
    (= (precio-vuelo vol-55) 123)
    (= (precio-vuelo vol-56) 115)
    (= (precio-vuelo vol-57) 64)
    (= (precio-vuelo vol-58) 127)
    (= (precio-vuelo vol-59) 101)
    (= (precio-vuelo vol-60) 76)
    (= (precio-vuelo vol-61) 83)
    (= (precio-vuelo vol-62) 112)
    (= (precio-vuelo vol-63) 31)
    (= (precio-vuelo vol-64) 52)
    (= (precio-vuelo vol-65) 65)
    (= (precio-vuelo vol-66) 122)
    (= (precio-vuelo vol-67) 82)
    (= (precio-vuelo vol-68) 111)
    (= (precio-vuelo vol-69) 102)
    (= (precio-vuelo vol-70) 31)
    (= (precio-vuelo vol-71) 67)
    (= (precio-vuelo vol-72) 81)
    (= (precio-vuelo vol-73) 103)
    (= (precio-vuelo vol-74) 62)
    (= (precio-vuelo vol-75) 108)
    (= (precio-vuelo vol-76) 88)
    (= (precio-vuelo vol-77) 97)
    (= (precio-vuelo vol-78) 116)
    (= (precio-vuelo vol-79) 47)
    (= (precio-vuelo vol-80) 82)
  )
  (:goal
  	(and (= (actual) (ciudades-totales)) (>= (dias-totales) (min-dias-totales)) (>= (precio-total) (min-precio)) (<= (precio-total) (max-precio))
  ))

  (:metric minimize (precio-total))
)
