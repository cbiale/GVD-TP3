//Se genera un dato para tener resultado en la consulta
MATCH (p:Person {name:"Vaca, Gonzalo Nahuel"}), (s:Subject {code:"GdPi"}) CREATE (p)-[:TEACH]->(s)

MATCH ()<-[:TEACH]-(p:Person)-[:STUDIED]->()
RETURN DISTINCT p.name