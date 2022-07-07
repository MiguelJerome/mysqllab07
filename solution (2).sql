-- 1.
SELECT * FROM client;

-- 2.
SELECT nom, prenom, date_naissance FROM client;

-- 3.
SELECT nom, prenom, date_naissance FROM client
WHERE date_naissance >= '1992-01-01';

-- 4.
SELECT nom, prenom FROM client 
WHERE nom = 'Laporte' AND prenom = 'Éric';

-- 5.
SELECT * FROM client
WHERE date_naissance < '1992-01-01';

-- 6.
SELECT nom AS 'NomFamille', prenom AS 'Prenom' FROM client;

-- 7.
SELECT * FROM client
WHERE nom = 'Laporte' OR nom = 'Roger';

-- 8.
SELECT * FROM client
WHERE NOT nom = 'Laporte';

SELECT * FROM client
WHERE nom <> 'Laporte';

-- 9.
SELECT * FROM client
WHERE date_naissance IS NULL;

-- 10.
SELECT * FROM client
WHERE date_naissance IS NOT NULL;

-- 11.
-- PERFORMANT, INCLUSIF
SELECT * FROM client
WHERE date_naissance 
	BETWEEN '1992-01-01' AND '1997-12-31';
	
-- PAS PERFORMANT
SELECT * FROM client
WHERE date_naissance >= '1992-01-01' AND
	  date_naissance < '1998-01-01';

-- 12.
SELECT * FROM client
WHERE nom IN ('Laporte', 'Gagnon', 'Dugal');

-- 13.
SELECT * FROM client
WHERE nom NOT IN ('Tremblay', 'Gagnon', 'Wayne');

-- 14.
SELECT * FROM client
WHERE nom LIKE 'G%';

-- 15.
SELECT * FROM client
WHERE nom LIKE 'G%x';

-- 16.
SELECT * FROM client
WHERE nom LIKE '%y';

-- 17.
SELECT * FROM client
WHERE nom LIKE 'G_____';

-- 18.
SELECT * FROM client
WHERE nom LIKE 'G_%';

-- 19.
SELECT *
FROM produit
ORDER BY nom ASC;

-- 20.
SELECT *
FROM client
ORDER BY prenom ASC, nom ASC;

-- 21.
SELECT * 
FROM client
WHERE date_naissance IS NOT NULL
ORDER BY date_naissance DESC
LIMIT 3;

-- 22.
SELECT *
FROM produit
ORDER BY prix DESC
LIMIT 5;

-- 23.
SELECT *
FROM produit
ORDER BY prix ASC
LIMIT 3;

-- 24.
SELECT *
FROM commande
ORDER BY date_commande ASC
LIMIT 2;

-- 25.
SELECT * 
FROM client
WHERE date_naissance IS NOT NULL
ORDER BY nom DESC;

-- 26.
UPDATE client 
SET date_naissance = '1970-01-01' 
WHERE date_naissance IS NULL;
