MATCH (p:Person {name:"Vaca, Gonzalo Nahuel"})-[r:STUDIED]->(s:Subject)
WITH toInteger(r.grade) AS grade
RETURN avg(grade)