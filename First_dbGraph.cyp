CREATE (luis:person {name:"Luis"})
CREATE (felipe:person {name: "Felipe"})
CREATE (carlos:person {name: "Carlos"})
CREATE (andres:person {name: "Andres"})
CREATE (ud:universidad {name: "U_distrital"})
CREATE (jave:universidad {name: "U_Javeriana"})
CREATE (futbol:deporte {name: "Futbol"})
CREATE (tenis:deporte {name: "Tenis"})
CREATE (ing_sistemas:carrera {name: "Ing_sistema"})
CREATE (ing_electronica:carrera {name: "Ing_electronica"})
CREATE (calc_diferencial:materia {name: "Caluclo diferencial"})
CREATE (luis)-[:FRIENDS]->(felipe)
CREATE (felipe)-[:FRIENDS]->(carlos)
CREATE (luis)-[:FRIENDS]->(andres)
CREATE (luis)-[:FRIENDS]->(carlos)
CREATE (luis)-[:STUDENT]->(ud)
CREATE (felipe)-[:STUDENT]->(jave)
CREATE (carlos)-[:STUDENT]->(ud)
CREATE (andres)-[:STUDENT]->(jave)
CREATE (luis)-[:SUBJECT]->(calc_diferencial)
CREATE (carlos)-[:SUBJECT]->(calc_diferencial)
CREATE (andres)-[:SUBJECT]->(calc_diferencial)
CREATE (felipe)-[:SUBJECT]->(calc_diferencial)
CREATE (luis)-[:PLAYER]->(futbol)
CREATE (andres)-[:PLAYER]->(futbol)
CREATE (felipe)-[:PLAYER]->(tenis)
CREATE (luis)-[:CAREER]->(ing_sistemas)
CREATE (felipe)-[:CAREER]->(ing_electronica)
CREATE (carlos)-[:CAREER]->(ing_electronica)
CREATE (andres)-[:CREATE]->(ing_sistemas)

MATCH (n) RETURN n

MATCH (luis:person {name: "Luis"})
SET luis.birthday = date("2021")
RETURN luis

MATCH (luis:person {name: "Luis"})
SET luis.name = "Esteban"
RETURN luis

MATCH (carlos:person{name:"Carlos"})
DETACH DELETE carlos

CREATE (oscar:person{name: "Oscar"})

MATCH (Oscar:person), (ud:universidad)
CREATE (oscar)-[:STUDENT]->(ud)
WHERE oscar.name = "Oscar" AND ud.name ="U_distrital"

MATCH (oscar:person {name:"Oscar"})
DETACH DELETE oscar