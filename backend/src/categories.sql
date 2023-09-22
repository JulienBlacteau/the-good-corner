CREATE TABLE categories
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nom VARCHAR(100) NOT NULL
);

INSERT INTO categories (nom)
VALUES ('Vêtements'), ('Sport'), ('High-tech'), ('Mobilier'), ('Autres');

SELECT * FROM categories;