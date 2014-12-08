(define (domain viatge)
	(:requirements :strips :typing :adl :equality :fluents)
	(:types ciudad hotel vuelo)
	(:functions
		(actual)
		(ciudades-totales)
		(min-dias-total)
		(min-dias-ciudad)
		(max-dias-ciudad)
	)
	(:predicates
		(es-de ?c - ciudad ?h - hotel)
		(va-a ?v - vuelo ?c1 - ciudad ?c2 - ciudad)
		(ciudad-empty ?c - ciudad)
		(esta-a ?c - ciudad)
	)

	(:action ciudad-inicio
	  :parameters (?c - ciudad)
	  :precondition (not (exists (?x - ciudad) (esta-a ?x)))
	  :effect (esta-a ?c)
	)

	(:action reservar-hotel
		:parameters (?c - ciudad ?h - hotel)
		:precondition (and (esta-a ?c) (ciudad-empty ?c) (es-de ?c ?h))
		:effect(and (not (ciudad-empty ?c)) (increase (actual) 1))
	)
	(:action reservar-vol
	  	:parameters (?v - vuelo ?c1 - ciudad ?c2 - ciudad)
		:precondition (and (esta-a ?c1) (not (ciudad-empty ?c1)) (ciudad-empty ?c2) (va-a ?v ?c1 ?c2))
		:effect (and (not (esta-a ?c1)) (esta-a ?c2))
	)
	
)