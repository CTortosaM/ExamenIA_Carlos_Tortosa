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
	?f <- (carro lugar ?l pMax ?m pActual ?p)
	?o <- (currentObj ?o)
	?f2 <- (objetivo ?o origen ?ori destino ?dest p ?np)
(test (= ?p 0))
(test (< ?np ?m))
=>
(retract ?f)
(assert (carro lugar ?ori pMax 50 pActual ?np))
(retract ?o)
)


(defrule descargarEnEstanteria
	?f <- (carro lugar m pxMax ?m pActual ?p)
	?f1 <- (objetivo ?l2)
=>
)