MATCH (p1:Person)-[:STUDIED]->()<-[:STUDIED]-(p2:Person)
WHERE NOT (p1)-[:BELONGS]->()<-[:BELONGS]-(p2)
RETURN DISTINCT p1