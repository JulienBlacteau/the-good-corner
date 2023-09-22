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
    ('Chemise en lin', 'Chemise en lin pour homme, taille M', 'Sophie', 19.99, 'shirt1.jpg', 'Paris', '2023-09-20', 1),
    ('Raquette de tennis Babolat', 'Raquette de tennis professionnelle', 'Luc', 89.99, 'tennis1.jpg', 'Lyon', '2023-09-19', 2),
    ('Casque audio Bluetooth', 'Casque audio sans fil de haute qualité', 'Alexandre', 69.99, 'headphones1.jpg', 'Marseille', '2023-09-18', 3),
    ('Canapé d''angle en cuir', 'Canapé d''angle en cuir véritable', 'Pierre', 799.99, 'sofa2.jpg', 'Lille', '2023-09-17', 4),
    ('Lunettes de soleil Ray-Ban', 'Lunettes de soleil aviateur Ray-Ban', 'Julie', 49.99, 'sunglasses1.jpg', 'Bordeaux', '2023-09-16', 1),
    ('Console de jeux PlayStation 5', 'Console de jeux nouvelle génération', 'Thomas', 599.99, 'ps5.jpg', 'Nice', '2023-09-15', 3),
    ('Table de bureau en bois', 'Table de bureau avec tiroirs', 'Luc', 149.99, 'desk1.jpg', 'Bordeaux', '2023-09-14', 4),
    ('Guitare acoustique Yamaha', 'Guitare acoustique de qualité avec housse', 'Martin', 199.99, 'guitar1.jpg', 'Lille', '2023-09-13', 5),
    ('Smartphone Samsung Galaxy S21', 'Smartphone Android haut de gamme', 'Sophie', 449.99, 'samsungs21.jpg', 'Nantes', '2023-09-12', 3),
    ('Montre-bracelet en acier inoxydable', 'Montre pour homme, étanche', 'Paul', 79.99, 'watch1.jpg', 'Marseille', '2023-09-11', 1),
    ('Console de jeux Xbox Series X', 'Console de jeux dernière génération', 'Alice', 499.99, 'xbox2.jpg', 'Rennes', '2023-09-10', 3),
    ('Table de ping-pong', 'Table de ping-pong pliable avec raquettes', 'Nicolas', 199.99, 'pingpong2.jpg', 'Bordeaux', '2023-09-09', 2),
    ('Appareil photo Canon EOS', 'Appareil photo reflex en excellent état', 'Sophie', 599.99, 'camera2.jpg', 'Paris', '2023-09-08', 3),
    ('Fauteuil en cuir', 'Fauteuil en cuir pour salon', 'Camille', 199.99, 'chair1.jpg', 'Dijon', '2023-09-07', 4),
    ('Trottinette électrique Xiaomi', 'Trottinette électrique pliable', 'Lucas', 249.99, 'scooter2.jpg', 'Nîmes', '2023-09-06', 3),
    ('Ordinateur portable Lenovo', 'Ordinateur portable léger et performant', 'Laura', 699.99, 'lenovo.jpg', 'Paris', '2023-09-05', 3),
    ('Raquette de ping-pong', 'Raquette de ping-pong professionnelle', 'Kevin', 39.99, 'pingpong3.jpg', 'Paris', '2023-09-04', 2),
    ('Livre "Le Petit Prince"', 'Édition spéciale illustrée', 'Sophie', 14.99, 'book3.jpg', 'Lyon', '2023-09-03', 5),
    ('Réfrigérateur Whirlpool', 'Réfrigérateur avec congélateur', 'Alexandre', 349.99, 'fridge2.jpg', 'Marseille', '2023-09-02', 4),
    ('Baskets Adidas', 'Baskets pour homme, pointure 44', 'Marie', 59.99, 'sneakers1.jpg', 'Lille', '2023-09-01', 1);

SELECT * FROM ad;

SELECT * FROM ad WHERE location IS 'Bordeaux';

DELETE FROM ad WHERE price > 40;

UPDATE ad SET price = 0 WHERE createdAt IS '2023-09-14';

SELECT AVG(price) AS prix_moyen FROM ad WHERE location IS 'Paris';

SELECT AVG(price) AS prix_moyen, location FROM ad GROUP BY location;

