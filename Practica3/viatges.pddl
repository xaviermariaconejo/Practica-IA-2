(define (domain viatge)
	(:requirements :strips :typing :adl :equality)
	(:types ciudad hotel vuelo)
	(:predicates
		(es-de ?c - ciudad ?h - hotel)
		(va-a ?v - vuelo ?c1 - ciudad ?c2 - ciudad)
		(ciudad-empty ?c - ciudad)
		(esta-a ?c - ciudad)
		(allotja-a ?c - ciudad ?h - hotel)
		(viatge-amb ?v - vuelo ?c1 - ciudad ?c2 - ciudad)
	)
	(:action reservar-hotel
		:parameters (?c - ciudad ?h - hotel)
		:precondition (and (esta-a ?c) (ciudad-empty ?c) (es-de ?c ?h))
		:effect(and (not (ciudad-empty ?c)) (allotja-a ?c ?h))
	)
	(:action reservar-vol
	  	:parameters (?v - vuelo ?c1 - ciudad ?c2 - ciudad)
		:precondition (and (esta-a ?c1) (not(ciudad-empty ?c1))(ciudad-empty ?c2) (va-a ?v ?c1 ?c2))
		:effect (and (not (esta-a ?c1)) (esta-a ?c2) (viatge-amb ?v ?c1 ?c2))
	)
	
)