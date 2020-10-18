MATCH (p:Person)-[r:TEACH]->()
WITH p, count(r) AS teachs
WHERE teachs > 1
RETURN DISTINCT p, teachs