MATCH (p:Person)-[r:STUDIED]->(s:Subject {code:"PdI"})
RETURN p
ORDER BY r.grade DESC
LIMIT 1