(deffacts BH 
(carro lugar m pMax 50 pActual 0)
(objetivo 1 origen m destino 2 p 40)
(objetivo 2 origen 3 destino m p 20)
(objetivo 3 origen 1 destino m p 30)
(objetivo 4 origen 2 destino m p 20)
(maxEstanteria 4)
(currentObj 1)
)

(defrule cargarPeso
	(declare (salience 100))
	?f <- (carro lugar ?l pMax ?m pActual ?p)
	?f0 <- (currentObj ?o)
	?f2 <- (objetivo ?o origen ?ori destino ?dest p ?np)
(test (= ?p 0))
(test (< ?np ?m))
=>
(retract ?f)
(assert (carro lugar ?ori pMax 50 pActual ?np))
(printout t "Cargo ")
(printout t  ?np)
(printout t " en ")
(printout t  ?ori crlf)

)


(defrule descargarPeso
	(declare (salience 100))
	?f <- (carro lugar ?l pMax ?m pActual ?p)
	?f0 <- (currentObj ?o)
	?f2 <- (objetivo ?o origen ?ori destino ?dest p ?np)
(test (> ?p 0))
(test (neq ?l ?dest))
=>
(retract ?f)
(assert (carro lugar ?dest pMax 50 pActual 0))
(retract ?f0)
(assert (currentObj (+ 1 ?o)))
(printout t "Descargo ")
(printout t  ?p)
(printout t " en ")
(printout t  ?dest crlf)
)


(defrule final
(declare (salience 1))
	?f <- (carro lugar ?l pMax ?m pActual ?p)
=>
(printout t "Completados los objetivos" crlf)
(halt)
)