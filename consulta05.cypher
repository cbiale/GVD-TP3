MATCH (p:Person {name:"Vaca, Gonzalo Nahuel"})
MATCH (p)-[:FRIENDSHIP*2]->(f2)
WHERE NOT (p)-[:FRIENDSHIP]-(f2)
RETURN f2