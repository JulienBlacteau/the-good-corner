-- SQLite
CREATE TABLE ad 
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title VARCHAR(100) NOT NULL,
	description TEXT,
	owner VARCHAR(100) NOT NULL,
	price FLOAT,
    picture VARCHAR(100),
    location VARCHAR(100),
	createdAt DATE,
    category VARCHAR(100)
);

INSERT INTO ad 
(title, description, owner, price, picture, location, createdAt, category)
VALUES 
('Vélo de course', 'Vélo en excellent état, utilisé seulement quelques fois', 'Jean', 350.50, 'http://example.com/velo1.jpg', 'Bordeaux', '2023-09-19', 'Sport'),
('Surfboard Softech', 'Brand new foam surfboard, perfect for beginers or small conditions', 'oliver', 200, '', 'Bordeaux', '2023-09-11', 'Sport'),
('MacBook Pro', 'Ordinateur 15 pouces, 256GB SSD, 16GB RAM', 'Luc', 1200, 'http://example.com/macbook.jpg', 'Lyon', '2023-09-05', 'Électronique'),
('Télévision LED 42 pouces', 'Télévision LED en excellent état', 'Jean', 299.99, 'tv1.jpg', 'Paris', '2023-09-20', 'Électronique'),
('Vélo de montagne tout terrain', 'Vélo en parfait état, peu utilisé', 'Marie', 330, 'bike1.jpg', 'Lyon', '2023-09-19', 'Sport et Loisirs'),
('Canapé en cuir 3 places', 'Canapé confortable en cuir noir', 'Pierre', 600, 'sofa1.jpg', 'Marseille', '2023-09-18', 'Mobilier'),
('Ordinateur portable HP', 'Ordinateur portable en bon état', 'Sophie', 500, 'laptop1.jpg', 'Lille', '2023-09-17', 'Électronique'),
('Table de salle à manger en bois', 'Table en bois avec 6 chaises', 'Luc', 350, 'table1.jpg', 'Toulouse', '2023-09-16', 'Mobilier'),
('iPhone 12 Pro 256 Go', 'iPhone 12 Pro en parfait état', 'Paul', 790, 'iphone1.jpg', 'Nice', '2023-09-15', 'Électronique'),
('Livre "Le Seigneur des Anneaux"', 'Édition collector, comme neuf', 'Marie', 30, 'book1.jpg', 'Bordeaux', '2023-09-14', 'Livres'),
('Machine à laver Bosch', 'Machine à laver peu utilisée', 'Thomas', 210, 'washer1.jpg', 'Strasbourg', '2023-09-13', 'Électroménager'),
('Tablette Samsung Galaxy', 'Tablette Android en bon état', 'Julie', 1, 'tablet1.jpg', 'Nantes', '2023-09-12', 'Électronique'),
('Veste en cuir véritable', 'Veste en cuir pour homme, taille M', 'Martin', 149, 'jacket1.jpg', 'Montpellier', '2023-09-11', 'Mode'),
('Console de jeux Xbox Series X', 'Console de jeux dernière génération', 'Alice', 450, 'xbox1.jpg', 'Rennes', '2023-09-10', 'Jeux vidéo'),
('Table de ping-pong', 'Table de ping-pong pliable avec raquettes', 'Nicolas', 175, 'pingpong1.jpg', 'Grenoble', '2023-09-09', 'Sport et Loisirs'),
('Appareil photo Canon EOS', 'Appareil photo reflex en excellent état', 'Sophie', 550, 'camera1.jpg', 'Paris', '2023-09-08', 'Électronique'),
('Table basse en verre', 'Table basse en verre avec étagère', 'Camille', 80, 'table2.jpg', 'Dijon', '2023-09-07', 'Mobilier'),
('Trottinette électrique Xiaomi', 'Trottinette électrique pliable', 'Lucas', 200, 'scooter1.jpg', 'Nîmes', '2023-09-06', 'Électronique'),
('Livre "Harry Potter"', 'Édition collector, comme neuf', 'Sophie', 50, 'book2.jpg', 'Lyon', '2023-09-03', 'Livres'),
('Réfrigérateur LG', 'Réfrigérateur en bon état', 'Alexandre', 300, 'fridge1.jpg', 'Marseille', '2023-09-02', 'Électroménager');

SELECT * FROM ad;

SELECT * FROM ad WHERE location IS 'Bordeaux';

DELETE FROM ad WHERE price > 40;

UPDATE ad SET price = 0 WHERE createdAt IS '2023-09-14';

SELECT AVG(price) AS prix_moyen FROM ad WHERE location IS 'Paris';

SELECT AVG(price) AS prix_moyen, location FROM ad GROUP BY location;

DELETE from ad;