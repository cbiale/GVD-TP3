MATCH (p1: Person {email:"ciror00@gmail.com"}), (p2: Person {email:"manuelalejandrocamino@gmail.com"}) CREATE (p1)-[:FRIENDSHIP]->(p2);
MATCH (p1: Person {email:"ciror00@gmail.com"}), (p2: Person {email:"claudio.biale@gmail.com"}) CREATE (p1)-[:FRIENDSHIP]->(p2);
MATCH (p1: Person {email:"ciror00@gmail.com"}), (p2: Person {email:"dordolo92@gmail.com"}) CREATE (p1)-[:FRIENDSHIP]->(p2);
MATCH (p1: Person {email:"ciror00@gmail.com"}), (p2: Person {email:"carlos.pantelides@gmail.com"}) CREATE (p1)-[:FRIENDSHIP]->(p2);
MATCH (p1: Person {email:"ciror00@gmail.com"}), (p2: Person {email:"alutenberg@gmail.com"}) CREATE (p1)-[:FRIENDSHIP]->(p2);
MATCH (p1: Person {email:"vacagonzalo@gmail.com"}), (p2: Person {email:"ciror00@gmail.com"}) CREATE (p1)-[:FRIENDSHIP]->(p2);
MATCH (p1: Person {email:"vacagonzalo@gmail.com"}), (p2: Person {email:"dordolo92@gmail.com"}) CREATE (p1)-[:FRIENDSHIP]->(p2);
MATCH (p1: Person {email:"vacagonzalo@gmail.com"}), (p2: Person {email:"manuelalejandrocamino@gmail.com"}) CREATE (p1)-[:FRIENDSHIP]->(p2);

MATCH (p1:Person)-[r1:STUDIED]->(s:Subject)<-[r2:STUDIED]-(p2:Person)
WHERE NOT (p1)-[:FRIENDSHIP]->(p2)
RETURN DISTINCT p1.name, p2.name