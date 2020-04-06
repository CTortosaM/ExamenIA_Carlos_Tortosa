(deffacts BH 
(carro lugar m pMax 50 pActual 0)
(objetivo 1 lugarOri 2 p 40)
(objetivo 2 lugarOri m p 20)
(objetivo 3 lugarOri m p 30)
(objetivo 4 lugarOri m p 20)
(maxEstanteria 4)
)

(defrule volverAlMostrador
	?f <- (carro lugar ?l pMax ?m pActual ?p)
(test (neq ?l m))
=>
)