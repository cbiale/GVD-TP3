//Se crean datos para tener resultado en la consulta
CREATE (s:Subject {code:"opt01", name: "optativa01", email:"o1@cursoscapse.com", schedule:"jueves (19 a 22)", optativa:"si"});

MATCH (p:Person {email:"ciror00@gmail.com"}), (s:Subject {code:"opt01"})
CREATE (p)-[:STUDIED {grade: "10"}]->(s);

MATCH (p:Person {name: "Vaca, Gonzalo Nahuel"}), (s:Subject {optativa: "si"})
WHERE NOT (p)-[:STUDIED]->(s)
MATCH (p2:Person)-[:STUDIED]->(s)
WHERE (p)-[:STUDIED]->()<-[:STUDIED]-(p2)
RETURN s