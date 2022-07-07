DROP DATABASE IF EXISTS boutique_jouet;
CREATE DATABASE boutique_jouet CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE boutique_jouet;

CREATE TABLE client(
	id_client INT NOT NULL AUTO_INCREMENT,
	nom VARCHAR(50) NOT NULL,
	prenom VARCHAR(50) NOT NULL,
	date_naissance DATE NULL,
	CONSTRAINT pk_client PRIMARY KEY(id_client)
);

CREATE TABLE produit(
	id_produit INT NOT NULL AUTO_INCREMENT,
	nom VARCHAR(50) NOT NULL,
	description TINYTEXT NOT NULL,
	prix DOUBLE NOT NULL,
	CONSTRAINT pk_produit PRIMARY KEY(id_produit)
);

CREATE TABLE commande(
	id_commande INT NOT NULL AUTO_INCREMENT,
	id_client INT NOT NULL,
	date_commande DATE NOT NULL,
	CONSTRAINT pk_commande PRIMARY KEY(id_commande),
	CONSTRAINT fk_commande FOREIGN KEY(id_client)
		REFERENCES client(id_client)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);

CREATE TABLE commande_produit(
	id_commande INT NOT NULL,
	id_produit INT NOT NULL,
	quantite INT NOT NULL,
	CONSTRAINT pk_commande_produit PRIMARY KEY(id_commande, id_produit),
	CONSTRAINT fk_commande2 FOREIGN KEY(id_commande)
		REFERENCES commande(id_commande)
		ON DELETE RESTRICT
		ON UPDATE CASCADE,
	CONSTRAINT fk_produit FOREIGN KEY(id_produit)
		REFERENCES produit(id_produit)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);

INSERT INTO client(nom, prenom, date_naissance)
VALUES('Tremblay', 'Simon', '2001-05-18');
INSERT INTO client(nom, prenom, date_naissance)
VALUES('Dugal', 'Steven', '1993-08-01');
INSERT INTO client(nom, prenom, date_naissance)
VALUES('Boucher', 'Bertrand', '1985-12-24');
INSERT INTO client(nom, prenom, date_naissance)
VALUES('Gagnon', 'Mélanie', '1996-08-24');
INSERT INTO client(nom, prenom, date_naissance)
VALUES('Laporte', 'Éric', '1991-02-09');
INSERT INTO client(nom, prenom, date_naissance)
VALUES('Laporte', 'Éric', '1995-03-25');
INSERT INTO client(nom, prenom)
VALUES('Giroux', 'Claude');
INSERT INTO client(nom, prenom)
VALUES('Wayne', 'Bruce');

INSERT INTO commande(id_client, date_commande)
VALUES(1, '2010-10-12');
INSERT INTO commande(id_client, date_commande)
VALUES(3, '2010-08-21');
INSERT INTO commande(id_client, date_commande)
VALUES(3, '2010-09-28');
INSERT INTO commande(id_client, date_commande)
VALUES(8, '2010-09-06');
INSERT INTO commande(id_client, date_commande)
VALUES(8, '2010-10-01');
INSERT INTO commande(id_client, date_commande)
VALUES(8, '2010-10-02');

INSERT INTO produit(nom, description, prix)
VALUES('ordinateur', 'Un ordinateur', 500.99);
INSERT INTO produit(nom, description, prix)
VALUES('clavier', 'Un clavier', 56.99);
INSERT INTO produit(nom, description, prix)
VALUES('souris', 'Une souris', 24.99);
INSERT INTO produit(nom, description, prix)
VALUES('écran', 'Un écran', 210.99);
INSERT INTO produit(nom, description, prix)
VALUES('batarang', 'Une arme à lancer en forme de chauve-souris', 16.99);
INSERT INTO produit(nom, description, prix)
VALUES('batmobile', 'Une automobile noire', 359000.00);
INSERT INTO produit(nom, description, prix)
VALUES('cape', 'Une cape noire', 65.50);
INSERT INTO produit(nom, description, prix)
VALUES('masque', 'Un masque de chauve-souris noir', 85.99);
INSERT INTO produit(nom, description, prix)
VALUES('ceinture', 'Une ceinture de ninja noir', 359.42);

INSERT INTO commande_produit(id_commande, id_produit, quantite)
VALUES(1, 3, 1);
INSERT INTO commande_produit(id_commande, id_produit, quantite)
VALUES(2, 1, 10);
INSERT INTO commande_produit(id_commande, id_produit, quantite)
VALUES(2, 4, 10);
INSERT INTO commande_produit(id_commande, id_produit, quantite)
VALUES(3, 2, 10);
INSERT INTO commande_produit(id_commande, id_produit, quantite)
VALUES(3, 3, 10);
INSERT INTO commande_produit(id_commande, id_produit, quantite)
VALUES(4, 6, 1);
INSERT INTO commande_produit(id_commande, id_produit, quantite)
VALUES(5, 7, 1);
INSERT INTO commande_produit(id_commande, id_produit, quantite)
VALUES(5, 8, 1);
INSERT INTO commande_produit(id_commande, id_produit, quantite)
VALUES(5, 9, 1);
INSERT INTO commande_produit(id_commande, id_produit, quantite)
VALUES(6, 5, 600);
