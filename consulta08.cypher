MATCH (p:Person {name: "Vaca, Gonzalo Nahuel"}), (s:Subject {optativa: "si"})
WHERE NOT (p)-[:STUDIED]->(s)
MATCH (p2:Person)-[:STUDIED]->(s)
WHERE (p)-[:FRIENDSHIP]->(p2)
RETURN s