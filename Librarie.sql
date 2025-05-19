 DROP TABLE CLIENTI CASCADE CONSTRAINTS
CREATE TABLE clienti (
    id_client INTEGER PRIMARY KEY,
    nume VARCHAR2(100),
    prenume VARCHAR2(100),
    email VARCHAR2(100),
    telefon VARCHAR2(20),
    adresa VARCHAR2(200)
);
DROP TABLE COMENZI CASCADE CONSTRAINTS
CREATE TABLE comenzi (
    id_comanda INTEGER PRIMARY KEY,
    id_client INTEGER,
    data_comanda DATE,
    total_comanda NUMBER,
    FOREIGN KEY (id_client) REFERENCES clienti(id_client)
);

CREATE TABLE carti (
    id_carte INTEGER PRIMARY KEY,
    id_categorie INTEGER,
    titlu VARCHAR2(200),
    editura VARCHAR2(100),
    gen VARCHAR2(50),
    data_publicare DATE,
    pret NUMBER,
    stoc NUMBER
);

CREATE TABLE categorii (
    id_categorie INTEGER PRIMARY KEY,
    nume_categorie VARCHAR2(100)
);

CREATE TABLE autori(
    id_autor INTEGER PRIMARY KEY,
    nume VARCHAR2(100),
    prenume VARCHAR2(100),
    data_nasterii DATE
);

CREATE TABLE carti_autori (
    id_carte INTEGER,
    id_autor INTEGER,
    PRIMARY KEY (id_carte, id_autor),
    FOREIGN KEY (id_carte) REFERENCES carti(id_carte),
    FOREIGN KEY (id_autor) REFERENCES autori(id_autor)
);

CREATE TABLE detalii_comenzi (
    id_detaliu INTEGER PRIMARY KEY,
    id_comanda INTEGER,
    id_carte INTEGER,
    cantitate NUMBER,
    pret_unitar NUMBER,
    status_comanda VARCHAR(50),
    FOREIGN KEY (id_comanda) REFERENCES comenzi(id_comanda),
    FOREIGN KEY (id_carte) REFERENCES carti(id_carte)
);

//ALTER
ALTER TABLE carti
ADD CONSTRAINT fk_carti_categorii FOREIGN KEY (id_categorie)
REFERENCES categorii(id_categorie);

//INSERT
INSERT INTO clienti (id_client, nume, email, telefon, adresa) VALUES (1, 'Popescu', 'popescu1@email.com', '0712345678', 'Str. Lalelelor nr.1');
INSERT INTO clienti (id_client, nume, email, telefon, adresa) VALUES (2, 'Ionescu', 'ionescu2@email.com', '0723456789', 'Str. Florilor nr.2');
INSERT INTO clienti (id_client, nume, email, telefon, adresa) VALUES (3, 'Marin', 'marin3@email.com', '0734567890', 'Str. Viilor nr.3');
INSERT INTO clienti (id_client, nume, email, telefon, adresa) VALUES (4, 'Dumitrescu', 'dumitrescu4@email.com', '0745678901', 'Str. Castanilor nr.4');
INSERT INTO clienti (id_client, nume, email, telefon, adresa) VALUES (5, 'Constantin', 'constantin5@email.com', '0756789012', 'Str. Teiului nr.5');
INSERT INTO clienti (id_client, nume, email, telefon, adresa) VALUES (6, 'Georgescu', 'georgescu6@email.com', '0767890123', 'Str. Salcamilor nr.6');
INSERT INTO clienti (id_client, nume, email, telefon, adresa) VALUES (7, 'Mihai', 'mihai7@email.com', '0778901234', 'Str. Primaverii nr.7');
INSERT INTO clienti (id_client, nume, email, telefon, adresa) VALUES (8, 'Petrescu', 'petrescu8@email.com', '0789012345', 'Str. Libertatii nr.8');
INSERT INTO clienti (id_client, nume, email, telefon, adresa) VALUES (9, 'Vasile', 'vasile9@email.com', '0790123456', 'Str. Unirii nr.9');
INSERT INTO clienti (id_client, nume, email, telefon, adresa) VALUES (10, 'Luca', 'luca10@email.com', '0711122233', 'Str. Independentei nr.10');
INSERT INTO clienti (id_client, nume, email, telefon, adresa) VALUES (11, 'Matei', 'matei11@email.com', '0722233344', 'Str. Soarelui nr.11');
INSERT INTO clienti (id_client, nume, email, telefon, adresa) VALUES (12, 'Andrei', 'andrei12@email.com', '0733344455', 'Str. Lunii nr.12');

SELECT * FROM clienti

INSERT INTO categorii (id_categorie, nume_categorie) VALUES (1, 'Fictiune');
INSERT INTO categorii (id_categorie, nume_categorie) VALUES (2, 'Non-Fictiune');
INSERT INTO categorii (id_categorie, nume_categorie) VALUES (3, 'Istorie');
INSERT INTO categorii (id_categorie, nume_categorie) VALUES (4, 'Biografie');
INSERT INTO categorii (id_categorie, nume_categorie) VALUES (5, 'Stiinta');
INSERT INTO categorii (id_categorie, nume_categorie) VALUES (6, 'Tehnologie');
INSERT INTO categorii (id_categorie, nume_categorie) VALUES (7, 'Poezie');
INSERT INTO categorii (id_categorie, nume_categorie) VALUES (8, 'Mister');
INSERT INTO categorii (id_categorie, nume_categorie) VALUES (9, 'Drama');
INSERT INTO categorii (id_categorie, nume_categorie) VALUES (10, 'Aventura');
INSERT INTO categorii (id_categorie, nume_categorie) VALUES (11, 'Fantezie');
INSERT INTO categorii (id_categorie, nume_categorie) VALUES (12, 'Roman Policier');

SELECT * FROM categorii

INSERT INTO autori (id_autor, nume, prenume, data_nasterii) VALUES (1, 'Mihai', 'Eminescu', DATE '1850-01-15');
INSERT INTO autori (id_autor, nume, prenume, data_nasterii) VALUES (2, 'Ion', 'Creanga', DATE '1839-03-01');
INSERT INTO autori (id_autor, nume, prenume, data_nasterii) VALUES (3, 'George', 'Bacovia', DATE '1881-09-17');
INSERT INTO autori (id_autor, nume, prenume, data_nasterii) VALUES (4, 'Ioan', 'Slavici', DATE '1848-01-18');
INSERT INTO autori (id_autor, nume, prenume, data_nasterii) VALUES (5, 'Liviu', 'Rebreanu', DATE '1885-11-27');
INSERT INTO autori (id_autor, nume, prenume, data_nasterii) VALUES (6, 'Lucian', 'Blaga', DATE '1895-05-09');
INSERT INTO autori (id_autor, nume, prenume, data_nasterii) VALUES (7, 'Mircea', 'Eliade', DATE '1907-03-13');
INSERT INTO autori (id_autor, nume, prenume, data_nasterii) VALUES (8, 'Marin', 'Preda', DATE '1922-08-05');
INSERT INTO autori (id_autor, nume, prenume, data_nasterii) VALUES (9, 'Tudor', 'Arghezi', DATE '1880-05-21');
INSERT INTO autori (id_autor, nume, prenume, data_nasterii) VALUES (10, 'Camil', 'Petrescu', DATE '1894-04-22');
INSERT INTO autori (id_autor, nume, prenume, data_nasterii) VALUES (11, 'Eugen', 'Ionesco', DATE '1909-11-26');
INSERT INTO autori (id_autor, nume, prenume, data_nasterii) VALUES (12, 'Emil', 'Cioran', DATE '1911-04-08');

SELECT * FROM autori

INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (1, 1, 'Luceafarul', 'Editura Univers', 'Poezie', DATE '1883-01-01', 25, 100);

INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (2, 7, 'Amintiri din copilarie', 'Editura Didactica', 'Povestiri', DATE '1881-01-01', 30, 150);

INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (3, 3, 'Morometii', 'Editura Cartea Romaneasca', 'Drama', DATE '1955-06-15', 40, 200);

INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (4, 9, 'Ion', 'Editura Litera', 'Roman', DATE '1920-01-01', 35, 180);

INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (5, 8, 'Enigma Otiliei', 'Editura Humanitas', 'Mister', DATE '1938-05-10', 50, 90);

INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (6, 5, 'Teorema vietii', 'Editura Stiintifica', 'Stiinta', DATE '2000-03-20', 70, 50);

INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (7, 6, 'Manualul Inovatiei', 'Editura Tehnica', 'Tehnologie', DATE '2015-09-01', 80, 60);

INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (8, 11, 'Calatorie spre Fantezie', 'Editura Fantasy Books', 'Fantezie', DATE '2018-11-20', 55, 120);

INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (9, 4, 'Viata lui Eminescu', 'Editura Biografica', 'Biografie', DATE '1970-02-15', 65, 70);

INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (10, 2, 'Enciclopedia Generala', 'Editura Enciclopedica', 'Non-Fictiune', DATE '2010-10-10', 100, 40);

INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (11, 10, 'Aventuri pe mare', 'Editura Aventura', 'Aventura', DATE '2005-07-01', 45, 95);

INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (12, 12, 'Detectivul fara Nume', 'Editura Politia Romaneasca', 'Roman Politier', DATE '2020-02-02', 60, 110);


SELECT * FROM carti

INSERT INTO carti_autori (id_carte, id_autor) VALUES (1, 1);
INSERT INTO carti_autori (id_carte, id_autor) VALUES (2, 2);
INSERT INTO carti_autori (id_carte, id_autor) VALUES (3, 8);
INSERT INTO carti_autori (id_carte, id_autor) VALUES (4, 5);
INSERT INTO carti_autori (id_carte, id_autor) VALUES (5, 10);
INSERT INTO carti_autori (id_carte, id_autor) VALUES (6, 6);
INSERT INTO carti_autori (id_carte, id_autor) VALUES (7, 7);
INSERT INTO carti_autori (id_carte, id_autor) VALUES (8, 11);
INSERT INTO carti_autori (id_carte, id_autor) VALUES (9, 9);
INSERT INTO carti_autori (id_carte, id_autor) VALUES (10, 12);
INSERT INTO carti_autori (id_carte, id_autor) VALUES (11, 4);
INSERT INTO carti_autori (id_carte, id_autor) VALUES (12, 3);

SELECT * FROM carti_autori

INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda) 
VALUES (1, 1, DATE '2024-06-10', 150);
INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda) 
VALUES (2, 2, DATE '2024-06-11', 300);
INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda) 
VALUES (3, 3, DATE '2024-06-12', 450);
INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda) 
VALUES (4, 4, DATE '2024-06-13', 200);
INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda) 
VALUES (5, 5, DATE '2024-06-14', 350);
INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda) 
VALUES (6, 6, DATE '2024-06-15', 400);
INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda) 
VALUES (7, 7, DATE '2024-06-16', 250);
INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda) 
VALUES (8, 8, DATE '2024-06-17', 500);
INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda) 
VALUES (9, 9, DATE '2024-06-18', 180);
INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda) 
VALUES (10, 10, DATE '2024-06-19', 300);
INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda) 
VALUES (11, 11, DATE '2024-06-20', 275);
INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda) 
VALUES (12, 12, DATE '2024-06-21', 320);

SELECT * FROM comenzi 

INSERT INTO detalii_comenzi (id_detaliu, id_comanda, id_carte, cantitate, pret_unitar,status_comanda) 
VALUES (1, 1, 1, 2, 25, 'A');
INSERT INTO detalii_comenzi (id_detaliu, id_comanda, id_carte, cantitate, pret_unitar,status_comanda) 
VALUES (2, 2, 2, 3, 30, 'A');
INSERT INTO detalii_comenzi (id_detaliu, id_comanda, id_carte, cantitate, pret_unitar,status_comanda) 
VALUES (3, 3, 3, 4, 40, 'B');
INSERT INTO detalii_comenzi (id_detaliu, id_comanda, id_carte, cantitate, pret_unitar,status_comanda) 
VALUES (4, 4, 4, 2, 35, 'C');
INSERT INTO detalii_comenzi (id_detaliu, id_comanda, id_carte, cantitate, pret_unitar,status_comanda) 
VALUES (5, 5, 5, 5, 50, 'C');
INSERT INTO detalii_comenzi (id_detaliu, id_comanda, id_carte, cantitate, pret_unitar,status_comanda) 
VALUES (6, 6, 6, 3, 70, 'B');
INSERT INTO detalii_comenzi (id_detaliu, id_comanda, id_carte, cantitate, pret_unitar,status_comanda) 
VALUES (7, 7, 7, 2, 80, 'A');
INSERT INTO detalii_comenzi (id_detaliu, id_comanda, id_carte, cantitate, pret_unitar,status_comanda) 
VALUES (8, 8, 8, 4, 55, 'C');
INSERT INTO detalii_comenzi (id_detaliu, id_comanda, id_carte, cantitate, pret_unitar,status_comanda) 
VALUES (9, 9, 9, 3, 65, 'A');
INSERT INTO detalii_comenzi (id_detaliu, id_comanda, id_carte, cantitate, pret_unitar,status_comanda) 
VALUES (10, 10, 10, 2, 100, 'B');
INSERT INTO detalii_comenzi (id_detaliu, id_comanda, id_carte, cantitate, pret_unitar,status_comanda) 
VALUES (11, 11, 11, 3, 45,'A');
INSERT INTO detalii_comenzi (id_detaliu, id_comanda, id_carte, cantitate, pret_unitar,status_comanda) 
VALUES (12, 12, 12, 4, 60, 'C');

SELECT * FROM detalii_comenzi

DROP TABLE REGIUNI CASCADE CONSTRAINTS

//UPDATE
UPDATE carti SET pret = 45, stoc = stoc - 10 WHERE id_carte = 5;
SELECT * FROM carti

SELECT * FROM clienti

DROP TABLE clienti CASCADE CONSTRAINTS

INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa) VALUES (1, 'Popescu', 'Ion', 'ion.popescu@gmail.com', '0712345678', 'Strada Principala nr. 10, Bucuresti');
INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa) VALUES (2, 'Ionescu', 'Maria', 'maria.ionescu@yahoo.com', '0723456789', 'Strada Libertatii nr. 22, Cluj-Napoca');
INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa) VALUES (3, 'Georgescu', 'Andrei', 'andrei.georgescu@outlook.com', '0734567890', 'Bulevardul Eroilor nr. 5, Timisoara');
INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa) VALUES (4, 'Dumitrescu', 'Elena', 'elena.dumitrescu@gmail.com', '0745678901', 'Aleea Castanilor nr. 7, Iasi');
INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa) VALUES (5, 'Pop', 'Cristian', 'cristian.pop@yahoo.com', '0756789012', 'Strada Mihai Viteazu nr. 14, Brasov');
INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa) VALUES (6, 'Stan', 'Ana', 'ana.stan@gmail.com', '0767890123', 'Piata Unirii nr. 3, Constanta');
INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa) VALUES (7, 'Marin', 'George', 'george.marin@yahoo.com', '0778901234', 'Strada Florilor nr. 8, Sibiu');
INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa) VALUES (8, 'Radu', 'Ioana', 'ioana.radu@outlook.com', '0789012345', 'Strada Independentei nr. 15, Craiova');
INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa) VALUES (9, 'Nistor', 'Mihai', 'mihai.nistor@gmail.com', '0790123456', 'Strada Vasile Alecsandri nr. 25, Oradea');
INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa) VALUES (10, 'Tudor', 'Laura', 'laura.tudor@yahoo.com', '0701234567', 'Strada Avram Iancu nr. 12, Arad');
INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa) VALUES (11, 'Barbu', 'Stefan', 'stefan.barbu@gmail.com', '0712345670', 'Strada Zorilor nr. 18, Suceava');
INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa) VALUES (12, 'Neagu', 'Raluca', 'raluca.neagu@outlook.com', '0723456701', 'Strada Oituz nr. 30, Baia Mare');

SELECT * FROM clienti

UPDATE clienti set email= REPLACE(email, '@yahoo.com', '@gmail.com') 
WHERE email LIKE '%@yahoo.com';
SELECT * FROM clienti

//DELETE

DELETE FROM detalii_comenzi WHERE id_carte >= 11 and cantitate >= 3;
SELECT * FROM detalii_comenzi;

DELETE FROM carti_autori WHERE id_carte = id_autor;
SELECT * FROM carti_autori;

//SELECT

SELECT id_client, nume, prenume, telefon
FROM clienti
WHERE telefon LIKE '071%';

SELECT id_carte, titlu , pret
FROM carti
WHERE pret > 45

// JOIN
SELECT c.id_client, c.nume, c.prenume, o.id_comanda, o.data_comanda
FROM clienti c
JOIN comenzi o ON c.id_client = o.id_client;

SELECT * FROM clienti
SELECT * FROM comenzi
INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa) VALUES (13, 'Cristea' , 'Alexandru' , 'cristeaalex@gmail.com', '0732456879' , 'Strada Frumoasa nr. 31, Bucuresti');
SELECT * FROM clienti
SELECT * FROM clienti ORDER BY id_client ASC;

SELECT c.id_client, c.nume, c.prenume, 
COALESCE(TO_CHAR(o.total_comanda), 'NULL') AS total_comanda
FROM clienti c
LEFT JOIN comenzi o ON c.id_client = o.id_client;

SELECT * FROM carti;
SELECT * FROM autori;
SELECT * FROM carti_autori;
INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (13, 1, 'Numele Trandafirului', 'Editura Polirom', 'Drama', DATE '1883-01-08', 30, 100);
INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (14, 1, 'Imortalistii', 'Storia Books', 'Aventura', DATE '2015-05-01', 25, 100);
INSERT INTO autori (id_autor, nume, prenume, data_nasterii) VALUES (13, 'Benjamin', 'Chloe', DATE '1989-04-08');
INSERT INTO autori (id_autor, nume, prenume, data_nasterii) VALUES (14, 'Paler', 'Octavian', DATE '1955-03-08');
SELECT * FROM carti ORDER BY id_carte;
SELECT * FROM autori ORDER BY id_autor;

SELECT a.id_autor, UPPER(a.nume || ' ' || a.prenume) AS nume_autor,
c.id_carte, c.titlu
FROM carti 
RIGHT JOIN carti_autori ca ON c.id_carte = ca.id_carte
RIGHT JOIN autori a ON ca.id_autor = a.id_autor;

INSERT INTO clienti(id_client, nume, prenume, email, telefon, adresa) VALUES (14, 'Dobrin' , 'Alexandru' , 'dobrinalex@gmail.com', '0732456123' , 'Strada Urata nr. 32, Brasov');
SELECT * FROM clienti ORDER BY id_client

SELECT c.id_client, (c.nume || ' ' || c.prenume) AS nume_client, o.total_comanda
FROM clienti c
FULL JOIN comenzi o ON c.id_client = o.id_client;

SELECT * FROM clienti
SELECT * FROM comenzi ORDER BY id_comanda

//Functii de grup
INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda) 
VALUES (14, 1, DATE '2024-08-10', 700);
INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda) 
VALUES (15, 8, DATE '2024-02-10', 550);
INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda) 
VALUES (16, 1, DATE '2024-07-10', 350);

SELECT id_client, COUNT(id_comanda) AS numar_comenzi
FROM comenzi 
GROUP BY id_client
HAVING COUNT(id_comanda)>=2;

SELECT id_client, SUM(total_comanda) AS total_comenzi
FROM comenzi
GROUP BY id_client
ORDER BY total_comenzi DESC;

SELECT a.id_autor, (a.nume || ' ' || a.prenume) AS nume_autor, 
AVG(COALESCE(c.pret, 0)) AS media_preturilor
FROM autori a
LEFT JOIN carti_autori ca ON a.id_autor = ca.id_autor
LEFT JOIN carti c ON ca.id_carte = c.id_carte
GROUP BY a.id_autor, a.nume, a.prenume;

SELECT c.id_carte, c. titlu, c.pret, c.data_publicare, 
SYSDATE AS data_curenta, ROUND(SYSDATE - c.data_publicare) AS zile_trecute
FROM  carti c
WHERE (SYSDATE-c.data_publicare) >=365 AND (SYSDATE-c.data_publicare) <=7300
ORDER BY zile_trecute ASC;

ALTER TABLE detalii_comenzi
ADD statut_comanda VARCHAR(50)
SELECT * FROM detalii_comenzi

ALTER TABLE detalii_comenzi
DROP COLUMN statut_comanda;

DROP TABLE detalii_comenzi CASCADE CONSTRAINTS

//DECODE SI CASE

SELECT id_comanda,
DECODE(status_comanda, 'A', 'IN ASTEPTARE', 'B', 'EXPEDIATA' , 'C', 'ANULATA' , 'NECUNOSCUT') AS status_comanda
FROM detalii_comenzi;

SELECT id_comanda,
 CASE
    WHEN total_comanda > 400 THEN 'Comanda mare'
    WHEN total_comanda BETWEEN 200 AND 500 THEN 'Comanda medie'
    ELSE 'Comanda mica'
 END AS tip_comanda
FROM comenzi
ORDER BY id_comanda;

INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa) VALUES (17, 'cristescu', 'Ion', 'ion.crsitescu@gmail.com', '0712346578', 'Strada Principala nr. 12, Bucuresti ');
INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa) VALUES (18, 'Apetroaiei', 'dan', 'danapetroaiei@gmail.com', '0712987678', 'Strada Principala nr. 10, Constanta ');
INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa) VALUES (19, 'nisip', 'diana', 'diananisip3@gmail.com', '0712345671', 'Strada Noua nr. 10, Brasov');

    
SELECT c.id_client, (c.nume || ' ' || c.prenume) AS nume_client,  -- Concatenare cu CONCAT()
c.adresa, co.total_comanda,
    CASE
        WHEN c.adresa LIKE '%Bucuresti%' THEN co.total_comanda * 0.90 -- Discount 10% pt cei din București
        WHEN c.adresa LIKE '%Brasov%' THEN co.total_comanda * 0.95 -- Discount 5% pt cei din Brașov
        WHEN c.adresa LIKE '%Constanta%' THEN co.total_comanda * 0.85 -- Discount 15% pt cei din Constanța
        ELSE co.total_comanda
    END AS total_comanda_cu_discount
FROM clienti c
JOIN comenzi co ON c.id_client = co.id_client;

//UNION, MINUS, INTERSECT

SELECT titlu FROM carti
UNION
SELECT (nume || ' ' || prenume) FROM autori;

SELECT c.id_client, (c.nume || ' ' || c.prenume) AS nume_client
FROM clienti c
MINUS
SELECT co.id_client, (c.nume || ' ' || c.prenume) AS nume_client
FROM clienti c
JOIN comenzi co ON c.id_client = co.id_client 
ORDER BY id_client;

SELECT id_carte, FROM carti
INTERSECT
SELECT id_carte FROM detalii_comenzi;

INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda) 
VALUES (13, 8, DATE '2024-10-10', 150);

SELECT id_client FROM comenzi
WHERE data_comanda BETWEEN to_date('2024-01-01','yyyy-mm-dd') AND to_date('2024-06-30','yyyy-mm-dd')
INTERSECT
SELECT id_client FROM comenzi
WHERE data_comanda BETWEEN to_date('2024-08-01','yyyy-mm-dd') AND to_date('2024-12-31','yyyy-mm-dd');

SELECT id_client, nume, prenume
FROM clienti
WHERE id_client IN (
    SELECT id_client
    FROM comenzi
    WHERE total_comanda > (
        SELECT AVG(total_comanda) FROM comenzi
    )
);
CREATE VIEW v_clienti_comenzi AS
SELECT c.id_client, c.nume, c.prenume, o.id_comanda, o.total_comanda
FROM clienti c
JOIN comenzi o ON c.id_client = o.id_client;
SELECT * FROM v_clienti_comenzi;

CREATE INDEX idx_clienti_nume ON clienti(nume);

CREATE SYNONYM clienti_syn FOR clienti;
SELECT * FROM clienti_syn;


select * from categorii
select * from carti
INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (18, 1, 'Carte Ficțiune 1', 'Editura A', 'Ficțiune', TO_DATE('2020-01-01', 'YYYY-MM-DD'), 50, 10);
INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (19, 1, 'Carte Ficțiune 2', 'Editura B', 'Ficțiune', TO_DATE('2021-06-15', 'YYYY-MM-DD'), 70, 5);
INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (20, 3, 'Carte Istorie 1', 'Editura C', 'Istorie', TO_DATE('2019-03-10', 'YYYY-MM-DD'), 80, 0);
INSERT INTO carti (id_carte, id_categorie, titlu, editura, gen, data_publicare, pret, stoc) 
VALUES (21, 7, 'Carte Poezie 1', 'Editura D', 'Știință', TO_DATE('2022-11-05', 'YYYY-MM-DD'), 100, 8);
//---------SEMESTRUL 2 PROIECT ---------------

//Punctul 1
//1.Să se adauge o constrângere de verificare care impune ca pretul cărtilor să fie mai mare decat 0
set serveroutput on;

BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE carti ADD CONSTRAINT chk_pret_carti CHECK (pret>0)';
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
         DBMS_OUTPUT.PUT_LINE('Eroare: ' || SQLERRM);
END;
/
//2.Sa se stearga contrsngerea de verificare introdusa la punctul anterior.
set serveroutput on;

BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE carti DROP CONSTRAINT chk_pret_carti';
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
    dbms_output.put_line('Eroare: '|| SQLERRM);
END;
/

//3.Sa se afiseze pentru fiecare categorie de carte numarul total de carti disponibile si 
//valoarea totala a stocului(suma produsului, actualizandu-se pretul cartilor din categoria Fictiune
set serveroutput on;

DECLARE
    v_id_categorie categorii.id_categorie%TYPE;
    v_nume_categorie categorii.nume_categorie%TYPE;
    v_numar_total_carti NUMBER;
    v_valoare_stoc Number;
    
BEGIN
    FOR c_categorie IN(
        SELECT
            c.id_categorie,
            c.nume_categorie,
            COUNT(b.id_carte)AS numar_total_carti,
            SUM(b.stoc*b.pret)AS valoare_stoc
        FROM
            categorii c
        LEFT JOIN
            carti b ON c.id_categorie = b.id_categorie
        GROUP BY
            c.id_categorie, c.nume_categorie
        )
        LOOP
            v_id_categorie :=c_categorie.id_categorie;
            v_nume_categorie := c_categorie.nume_categorie;
            v_numar_total_carti := c_categorie.numar_total_carti;
            v_valoare_stoc :=c_categorie.valoare_stoc;
            
            if v_nume_categorie = 'Fictiune' THEN
                UPDATE carti
                SET pret = pret * 1.1
                WHERE id_categorie = v_id_categorie;
                
                dbms_output.put_line('Preturile pentru categoria: ' || v_nume_categorie || '  au fost marite cu 10%.' );
                dbms_output.put_line(CHR(10));
            end if;
            
            
            dbms_output.put_line('Categorie: '||v_nume_categorie);
            dbms_output.put_line('Numar total de carti '||v_numar_total_carti);
            dbms_output.put_line('Valoarea totala a stocului: '||v_valoare_stoc);
            dbms_output.put_line(CHR(10));
        end loop;    
end;
/

//4.Sa se creeze un index penru tabelul carti
set serveroutput on:
begin 
    execute immediate 'CREATE INDEX idx_titlu_carti ON carti(titlu)';
    dbms_output.put_line('Index-ul a fost creat cu succes.');
exception
    WHEN OTHERS THEN
        dbms_output.put_line('Eroare la crearea index-ului.'|| SQLERRM);
END;
/
drop index idx_titlu_carti

//5.Sterge comenzile care au totalul 0
set serveroutput on;

BEGIN
    DELETE FROM comenzi
    WHERE total_comanda = 0;
    
    DBMS_OUTPUT.PUT_LINE('Comenzile cu totalul 0 au fost sterse.');
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('Eroare la stergerea comenzilor: ' || SQLERRM);
END;
/    

select * from carti
//PARTEA 2
//6.Pentru cartile cu pretul mai mare de 50, aplicati o reducere de 20%.
//Daca o carte face parte din categoria Istorie, aplicati o reducere suplimentara de 10%.

set serveroutput on;

DECLARE
    v_pret_initial NUMBER;
    v_pret_final NUMBER;
    v_id_categorie_istorie NUMBER;

BEGIN
    SELECT id_categorie 
        INTO v_id_categorie_istorie
        FROM categorii
        WHERE nume_categorie = 'Istorie';
    FOR carte IN (
        SELECT id_carte, titlu,pret, stoc, id_categorie
        FROM carti WHERE stoc>50)
    LOOP
        v_pret_initial:=carte.pret;
        v_pret_final :=carte.pret*0.8;
        
       IF carte.id_categorie = v_id_categorie_istorie then 
            v_pret_final:=v_pret_final*0.9;
        END IF;
        
        UPDATE CARTI
        SET pret = v_pret_final
        WHERE id_carte=carte.id_carte;
        
        dbms_output.put_line('Cartea "' ||carte.titlu ||'" a avut pretul redus de la ' ||v_pret_initial || ' la ' ||v_pret_final);
    end loop;
end;
/
SELECT * FROM carti
//7. Pentru comenzile marcate ca finalizat, scadeti cantitatea corespunzatoare din stocul fiecarei carti.

set serveroutput on;
BEGIN
    FOR detaliu IN(
        SELECT d.id_comanda,d.id_carte,d.cantitate, b.stoc
        FROM detalii_comenzi d JOIN carti b ON b.id_carte=d.id_carte
        WHERE d.status_comanda = 'C')
    LOOP
        UPDATE carti
        SET stoc= stoc-detaliu.cantitate
        WHERE id_carte=detaliu.id_carte;
        
        DBMS_OUTPUT.PUT_LINE('Pentru comanda ' || detaliu.id_comanda || ' s-a redus stocul cartii ' || detaliu.id_carte || ' cu ' || detaliu.cantitate);
    end loop;
end;
/

//8.Verifica daca un autor este nascut inainte de anul 1970, daca da actualizeaza numele pentru a consinte prefixul "Clasic", daca nu, va contine "Modern".

set serveroutput on;

declare 
    v_index number:=1;
    v_total_autori NUMBER;
    v_data_nasterii DATE;
    v_nume_complet VARCHAR(200);
    v_id_autor NUMBER;

CURSOR c_autori IS
    select id_autor, (nume || ' '|| prenume) AS nume_complet, data_nasterii
    FROM autori;

BEGIN
    select count(*) into v_total_autori from autori;
    
OPEN c_autori;

WHILE v_index<=v_total_autori LOOP
    FETCH c_autori INTO v_id_autor, v_nume_complet, v_data_nasterii;
    
    IF v_data_nasterii < TO_DATE('01-JAN-1970','DD-MON-YYYY') THEN
        UPDATE autori
        SET nume='Clasic '|| v_nume_complet
        WHERE id_autor = v_id_autor;
        DBMS_OUTPUT.PUT_LINE('Autorul ' || v_nume_complet || ' a fost marcat ca "Clasic".');
    ELSE
        UPDATE autori
        SET nume = 'Modern ' || v_nume_complet
        WHERE id_autor=v_id_autor;
        DBMS_OUTPUT.PUT_LINE('Autorul ' || v_nume_complet || ' a fost marcat ca "Modern".');
end if;
v_index:=v_index+1;
end loop;
close c_autori;
end;
/
select * from autori
//9. Sterge prefixul si prenumele
set serveroutput on;

begin 
    update autori    
    set nume=replace(nume, 'Clasic', '') 
    where data_nasterii<to_date('01-JAN-1970','DD-MON-YYYY');
    
    update autori
    set nume = replace(nume,'Modern','')
    where data_nasterii>to_date('01-JAN-1970','DD-MON-YYYY');
    update autori
    set nume=replace(nume,prenume,'');
end;
/
select * from autori

//10.Foloseste o colectie de tip index by table pentru a stoca numele 
//autorilor din tabelul autori. Afiseaza numele lor in ordine descresc a id-urilor

set serveroutput on;

declare 
    TYPE t_autori IS TABLE OF autori.nume%TYPE INDEX BY PLS_INTEGER;
    v_autori t_autori;
    v_index PLS_INTEGER;
    
begin
    FOR rec IN (
    SELECT id_autor, (nume || prenume) as nume FROM autori order BY id_autor desc)
    loop
        v_autori(rec.id_autor):=rec.nume;
    end loop;
    
    v_index:= v_autori.First;
    while v_index is not null loop
        dbms_output.put_line('Id autor: '||v_index || ' Nume: '||v_autori(v_index));
        v_index:=v_autori.next(v_index);
    end loop;
end;
/
select * from carti
//11.Scrie un program care utilizeaza o colectie nested table pentru 
//a stoca titlurile cartilor cu stoc mai mare de 50.
set serveroutput on;
declare
    TYPE t_titluri is table of carti.titlu%type;
    v_titluri t_titluri:=t_titluri();

begin
    for rec in(
    select titlu from carti where stoc>50)
    loop
        v_titluri.EXTEND;
        v_titluri(v_titluri.COUNT):=rec.titlu;
    end loop;
    
    for i in 1..v_titluri.COUNT LOOP
        dbms_output.put_line('Titlu carte: '|| v_titluri(i));
    end loop;
end;
/
select * from clienti order by id_client
//12.Creeaza un program care utilizeaza o colectie varray pentru a stoca
// primi 5 clienti din tabelul clienti
set serveroutput on;

declare 
    TYPE t_clienti is varray(5) of varchar2(200);
    v_clienti t_clienti:= t_clienti();
    
begin 
    for rec in(select nume||' '||prenume as nume_complet from clienti where rownum<=5) loop
        v_clienti.extend;
        v_clienti(v_clienti.COUNT):=rec.nume_complet;
    end loop;
    
    for i in 1..v_clienti.count loop
        dbms_output.put_line('Client: '|| v_clienti(i));
    end loop;
    
end;
/
//13.Creeaza un program care utilizeaza doua colectii index by table pt
// id-urile cartilor si nested table pentru titlurile corespunzatoare,
// pt cartile de la editura B. Afiseaza perechile.
set serveroutput on;

declare 

    type t_ids is table of carti.id_carte%type index by pls_integer;
    v_ids t_ids;
    v_index pls_integer:=0;
    
    type t_titluri is table of carti.titlu%type;
    v_titluri t_titluri:=t_titluri();
    
begin
    for rec in (
    select id_carte, titlu from carti where editura='Editura B') loop
        v_index:=v_index+1;
        v_ids(v_index):=rec.id_carte;
        v_titluri.extend;
        v_titluri(v_index):=rec.titlu;
    end loop;
    
    for i in 1..v_index loop
        dbms_output.put_line('ID carte: '|| v_ids(i) || ' Titlu: '|| v_titluri(i));
    end loop;
end;
/

//14. Sa se citeasca datele cartilor cu stoc mai mare de 500. Sa se trateze exceptiile precum NO_DATA_FOUND,
//TOO_MANY_ROWS si VALUE ERROR. Trateaza si erori implicite precum pretul unei carti este 0 sau negativ
//sau daca stocul unei carti este peste 1000 sa se raporteze o eroare

set serveroutput on;

declare
    v_id_carte carti.id_carte%type;
    v_titlu carti.titlu%type;
    v_pret carti.pret%type;
    v_stoc carti.stoc%type;
    cursor c_carti is
        select id_carte, titlu, pret,stoc from carti where stoc>1000;
    e_pret_invalid Exception;
    e_stoc_excesiv EXCEPTION;
    v_rows_found boolean:=false;

begin 
    open c_carti;
    loop
    fetch c_carti into v_id_carte, v_titlu, v_pret, v_stoc;
    
    exit when c_carti%notfound;
    
    v_rows_found:=TRUE;
    
    if v_pret<=0 then 
        raise e_pret_invalid;
    end if;
    
    if v_stoc>1000 then 
        raise e_stoc_excesiv;
    end if;
    
    DBMS_OUTPUT.PUT_LINE('ID Carte: ' || v_id_carte || 
                             ', Titlu: ' || v_titlu || 
                             ', Pret: ' || v_pret || 
                             ', Stoc: ' || v_stoc);
    end loop;
    close c_carti;
    
    if not v_rows_found then 
        dbms_output.put_line('Eroare: Nu exista carti cu stoc mai mare de 1000');
    end if;
    
Exception
    
    when too_many_rows then
        dbms_output.put_line('Eroare: Prea multe linii.');
    
    when value_error then
        dbms_output.put_line('Eroare: conversie invalida');
        
    when e_pret_invalid then
        dbms_output.put_line('Eroare: O carte are pretul invalid');
        
    when e_stoc_excesiv then
        dbms_output.put_line('Eroare: Stoc in exces.');
end;
/

//15. Insereaza un angajat in tabelul angajati. Daca numarul de telefon este invalid, ridica o
// exceptie explicita. De asemenea, gestioneaza exceptiile implicite pentru duplicarea 
//valorii cheii primare si erorile de conversie
select *from clienti
set serveroutput on;

declare
    v_id number:=102;
    v_nume varchar2(50) :='Popescu';
    v_prenume varchar2(50) :='Andrei';
    v_email varchar2(50):='ionpopescu@yahoo.com';
    v_telefon VARCHAR2(20):='07564';
    v_adresa VARCHAR2(200):='str. Laleleor nr.4';
    e_telefon_invalid exception;

begin
    if length(v_telefon)=10 then
        insert into clienti(id_client, nume, prenume,email, telefon, adresa)
        values(v_id, v_nume, v_prenume, v_email, v_telefon, v_adresa);
         DBMS_OUTPUT.PUT_LINE('Client inserat cu succes.');
    else
        raise e_telefon_invalid;
    end if;

exception
    when dup_val_on_index then 
        DBMS_OUTPUT.PUT_LINE('ID-ul clientului exista deja');
    when value_error then
        DBMS_OUTPUT.PUT_LINE('Conversie invalida de date');
    when e_telefon_invalid then 
        DBMS_OUTPUT.PUT_LINE('Numar de telefon prea scurt');
        
end;
/

//16. Cauta un produs dupa id. Daca nu se gaseste produsul gestioneaza exceptia
// no_data found. daca pretul este 0, ridica o exceptie explicita.
set serveroutput on;
declare 
    v_id number:=2001;
    v_titlu varchar2(100);
    v_pret number;
    
    e_pret_invalid exception;
begin
    select titlu, pret into v_titlu, v_pret
    from carti where id_carte=v_id;
    
    if v_pret =0 then 
        raise e_pret_invalid;
    end if;
    DBMS_OUTPUT.PUT_LINE('Titlu: ' || v_titlu || ', Preț: ' || v_pret);
    
exception
    when NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Eroare: Cartea cu acest id nu exista');
    when e_pret_invalid then 
        DBMS_OUTPUT.PUT_LINE('Eroare: Pretul produsului nu poate fi 0');
end;
/

//17. Calculeaza pretul mediu al cartilor dintr-o categorie data. Daca nu exista 
//carti din acea categorie sa se trateze cazul pentru a evita impartirea la zero.
set serveroutput on;
declare
    v_categorie varchar2(50):='Istorie 2';
    v_total_carti NUMBER := 0;
    v_suma_preturi NUMBER := 0;
    v_pret_mediu NUMBER;
begin
    select count(*), NVL(SUM(pret), 0)
    into v_total_carti, v_suma_preturi
    from carti
    where id_categorie = (select id_categorie from categorii where nume_categorie =v_categorie);
    
    v_pret_mediu:=v_suma_preturi/v_total_carti;
    
    DBMS_OUTPUT.PUT_LINE('Categoria: ' || v_categorie);
    DBMS_OUTPUT.PUT_LINE('Prețul mediu este: ' || v_pret_mediu); 
exception
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Eroare: Împărțire la zero! Nu există cărți în categoria specificată.');
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Eroare: Categoria ' || v_categorie || ' nu există.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('O eroare neașteptată a avut loc: ' || SQLERRM);
END;
/
//18.Actualizeaza preturile cartilor dintr-o anumita categorie cu 10%. Afiseaza cate randuri au fost actualizate.
set serveroutput on;

declare
    v_rows_updated NUMBER := 0;
begin
    UPDATE carti
    SET pret = pret * 1.1
    WHERE id_categorie = (SELECT id_categorie FROM categorii WHERE nume_categorie = 'Fictiune')
    RETURNING COUNT(*) INTO v_rows_updated;
    
    IF v_rows_updated > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Număr de rânduri actualizate: ' || v_rows_updated);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Nu au fost găsite cărți în categoria specificată.');
    END IF;
exception
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('O eroare neașteptată a avut loc: ' || SQLERRM);
END;
/
//19.Determinati numarul de carti dintr-o anumita categorie in functie de id-ul categoriei transmis ca parametru.Sa se calculeze suma totala a cartilor pentru acea categorie

set serveroutput on;
declare 
    cursor c_carti(p_id_categorie number) is
    select titlu, pret
    from carti
    where id_categorie=p_id_categorie;
    
    v_titlu varchar2(100);
    v_pret number;
    v_suma_preturi number:=0;
    
    v_id_categorie number:=1;

begin
    open c_carti(v_id_categorie);
    
    loop
    fetch c_carti into v_titlu, v_pret;
    exit when c_carti%notfound;
    DBMS_OUTPUT.PUT_LINE('Titlu: ' || v_titlu || ', Pret: ' || v_pret);
    
    v_suma_preturi:=v_suma_preturi+v_pret;
    
    end loop;
    close c_carti;
    
    if v_suma_preturi=0 then 
        DBMS_OUTPUT.PUT_LINE('Nu exista carti cu acest ID.');
    else
        DBMS_OUTPUT.PUT_LINE('Suma totala este: '||v_suma_preturi);
    end if;
exception
    when others then
        DBMS_OUTPUT.PUT_LINE('A aparut o eroare: '||SQLERRM);
end;
/

//20.Scrie o functie care calculeaza pretul total al unei comenzi luand in 
//considerare un procent de reducere.
set serveroutput on;

create or replace function calculeaza_pret_total(v_pret number, v_cantitate number, v_reducere number)
return number is
begin
    return (v_pret*v_cantitate)*(1-v_reducere/100);
end;
/

declare
    v_pret_total number;
    v_reducere number :=10;
    v_cantitate number;
    v_pret number;

begin
    for rec in (select pret_unitar, cantitate 
        from detalii_comenzi) loop
            v_pret:=rec.pret_unitar;
            v_cantitate:=rec.cantitate;
            v_pret_total:=calculeaza_pret_total(v_pret,v_cantitate,v_reducere);
            dbms_output.put_line('Pret total: '|| v_pret_total);
        end loop;
end;
/
//21 Scrie o procedura care primeste numele unui client 
//si afiseaza toate comenzile acestuia. 
set serveroutput on;
create or replace procedure afiseaza_comenzi(v_nume_client varchar) is 
begin
    for rec in (select c.id_comanda, c.data_comanda, c.total_comanda
    from clienti cl
    join comenzi c on cl.id_client=c.id_client
    where cl.nume=v_nume_client)
    loop
        DBMS_OUTPUT.PUT_LINE('ID Comandă: ' || rec.id_comanda || ', Dată: ' || rec.data_comanda || ', Total: ' || rec.total_comanda);
    END LOOP;
END;
/

declare
v_id number:=2;
v_nume varchar2(200);

begin
    select nume into v_nume from clienti where id_client= v_id;
    afiseaza_comenzi(v_nume);
end;
/

//22.Scrie o procedura care va
//actualiza  stocul unei carti dupa efectuarea unei comenzi.
set serveroutput on;
CREATE OR REPLACE PROCEDURE actualizeaza_stoc(v_id_carte NUMBER, v_cantitate_vanduta NUMBER) IS
BEGIN
    UPDATE carti
    SET stoc = stoc - v_cantitate_vanduta
    WHERE id_carte = v_id_carte;
    DBMS_OUTPUT.PUT_LINE('Stocul a fost actualizat.');
END;
/

declare
v_id number :=5;
v_cantitate number :=2;

begin
actualizeaza_stoc(v_id,v_cantitate);
end;
/

//23. Creza un pachet ce ofera o functie pentru obtinerea numelui complet al unui
//angajat si o procedura pentru calcularea salariului anual pe baza salariului lunar.

SET SERVEROUTPUT ON;

CREATE OR REPLACE PACKAGE angajati_operatii IS
    FUNCTION nume_complet(p_id_angajat IN NUMBER) RETURN VARCHAR2;
    PROCEDURE calculeaza_salariul_anual(p_id_angajat IN NUMBER, p_salariu_anual OUT NUMBER);
END angajati_operatii;
/
CREATE OR REPLACE PACKAGE BODY angajati_operatii IS
    FUNCTION nume_complet(p_id_angajat IN NUMBER) RETURN VARCHAR2 IS
        v_nume_complet VARCHAR2(100);
    BEGIN
        SELECT nume || ' ' || prenume
        INTO v_nume_complet
        FROM angajati
        WHERE id_angajat = p_id_angajat;
        RETURN v_nume_complet;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 'Angajatul nu a fost găsit';
        WHEN OTHERS THEN
            RETURN 'Eroare necunoscută';
    END nume_complet;

    PROCEDURE calculeaza_salariul_anual(p_id_angajat IN NUMBER, p_salariu_anual OUT NUMBER) IS
        v_salariu_lunar NUMBER;
    BEGIN
        SELECT salariul
        INTO v_salariu_lunar
        FROM angajati
        WHERE id_angajat = p_id_angajat;

        p_salariu_anual := v_salariu_lunar * 12;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            p_salariu_anual := 0;
        WHEN OTHERS THEN
            p_salariu_anual := 0;
    END calculeaza_salariul_anual;

END angajati_operatii;
/

DECLARE
    v_nume_angajat VARCHAR2(100);
    v_salariu_anual NUMBER;
BEGIN
    v_nume_angajat := angajati_operatii.nume_complet(101);
    DBMS_OUTPUT.PUT_LINE('Numele complet al angajatului: ' || v_nume_angajat);
    angajati_operatii.calculeaza_salariul_anual(101, v_salariu_anual);
    DBMS_OUTPUT.PUT_LINE('Salariul anual al angajatului: ' || v_salariu_anual);
END;
/
       
//24. Procedura care verifica daca exista stoc dintr-o carte suficient  pentru o comanda.
set serveroutput on;
CREATE OR REPLACE PROCEDURE verifica_stoc(v_id_carte NUMBER, v_cantitate NUMBER) IS
    v_stoc_actual NUMBER;
BEGIN
    SELECT stoc
    INTO v_stoc_actual
    FROM carti
    WHERE id_carte = v_id_carte;

    IF v_stoc_actual >= v_cantitate THEN
        DBMS_OUTPUT.PUT_LINE('Stoc suficient pentru comandă.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Stoc insuficient!');
    END IF;
END;
/

begin

    verifica_stoc(1,10);
end;
/
//25. Creeaza o procedura ce actualizeaza pretul unei carti deja existente, identificat
//prin id cu o valoare specificata.

set serveroutput on;
create or replace procedure update_pret(p_id_carte number, pret_nou number) is
    begin
        update carti
        set pret =pret_nou where id_carte=p_id_carte;
        
        if sql%rowcount = 0 then
            dbms_output.put_line('Cartea cu id-ul'||p_id_carte|| 'nu a fost gasita.');
        else
            dbms_output.put_line('Pretul cartii cu id-ul '||p_id_carte|| ' a fost actualizat la '|| pret_nou);
        end if;
        
    exception 
        when others then
             DBMS_OUTPUT.PUT_LINE('Eroare la actualizarea salariului: ' || SQLERRM);
end update_pret;
/

begin 
    update_pret(4,6000);
end;
/

//26. Creeaza o functie care calculeaza vasrat unei carti in ani, pe baza datei de publicare.
set serveroutput on;
create or replace function calculeaza_varsta(p_id_carte number) 
return number is
    v_data_publicare date;
    v_varsta number;
begin
    select data_publicare into v_data_publicare
    from carti where p_id_carte = id_carte;
    
    v_varsta:=trunc(months_between(sysdate, v_data_publicare)/12);
    return v_varsta;
exception
    when no_data_found then
        return null;
    when others then
        return null;
end calculeaza_varsta;
/

declare
    v_varsta number;
begin
    v_varsta:=calculeaza_varsta(10);
     if v_varsta IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Vârsta cartii cu ID-ul 10 este: ' || v_varsta || ' ani.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Cartea cu ID-ul 10 nu a fost găsita sau a apărut o eroare.');
    END IF;
END;
/

//27. Scrie o functie ce calculeaza valoarea totala a comenzilor plasate de un client, pe baza id-ului sau.

set serveroutput on;
create or replace function val_tot_comenzi(p_id_client number) 
return number is
    v_total number:=0;
begin
    select nvl(sum(total_comanda), 0)
    into v_total
    from comenzi where id_client = p_id_client;
    return v_total;
exception
    when others then
        return null;
end val_tot_comenzi;
/

declare 
    v_total number;
begin
    v_total:=val_tot_comenzi(8);
    DBMS_OUTPUT.PUT_LINE('Valoarea totala a cumparaturilor este: '|| v_total);
end;
/
    
select * from comenzi            
    
//28. Creeaza o functie care returneaza numarul total de carti  scrise de un autor.
CREATE OR REPLACE FUNCTION numar_carti_autor(p_id_autor NUMBER)
RETURN NUMBER IS
    v_numar_carti NUMBER := 0;
BEGIN
    SELECT COUNT(*)
    INTO v_numar_carti
    FROM carti_autori
    WHERE id_autor = p_id_autor;

    RETURN v_numar_carti;
EXCEPTION
    WHEN OTHERS THEN
        RETURN NULL;
END numar_carti_autor;
/

declare
    v_numar_carti NUMBER;
BEGIN
    v_numar_carti := numar_carti_autor(5);
    DBMS_OUTPUT.PUT_LINE('Numărul de cărți scrise de autorul cu ID-ul 5 este: ' || v_numar_carti);
END;
/

//29. Creeaza un declansatorla nivel de rand care sa inregistreze
//modificarile efectuate asupra tabelului carti intr-un jurnal.


set serveroutput on;
create or replace trigger log_update_carti
after update on carti
for each row declare
    v_nr_modificari number:=0;
begin
   v_nr_modificari := v_nr_modificari +1;
   dbms_output.put_line('O carte a fost actualizata. Id-ul cartii: '|| :old.id_carte);
        
end lod_update_carti;
/

UPDATE carti
SET pret = pret + 5
WHERE id_categorie = 3;


//30. Creeaza un declansator la nivel de rand care sa verifice inainte de inserarea unui client daca adresa 
//de email a clientului exista deja in baza de date.

set serveroutput on;
create or replace trigger verifica_email
before insert on clienti
for each row
declare
    v_count number;
begin
    select count(8) into v_count from clienti where email=:new.email;
    if v_count>0 then
        RAISE_APPLICATION_ERROR(-20001, 'Exista deja aceasta adresa e email.');
    end if;
end ;
/
select * from clienti order by id_client

INSERT INTO clienti (id_client, nume, prenume, email, telefon, adresa)
VALUES (28, 'Ion', 'Popescu', 'ion.popescu@hotmail.ro', '0721234567', 'Strada X');

//31.Creeaza un declansator la nivel de rand care după inserarea unui detaliu de comandă în tabelul 
//detalii_comenzi, să actualizeze prețul total al comenzii în tabelul comenzi.

SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER actualizare_total_comanda
AFTER INSERT ON detalii_comenzi
FOR EACH ROW
DECLARE
    v_pret_unitar NUMBER;
    v_total_comanda NUMBER;
BEGIN
    SELECT pret INTO v_pret_unitar
    FROM carti
    WHERE id_carte = :NEW.id_carte;

    v_total_comanda := :NEW.cantitate * v_pret_unitar;

    UPDATE comenzi
    SET total_comanda = total_comanda + v_total_comanda
    WHERE id_comanda = :NEW.id_comanda;
END;
/



select *  from carti where id_carte=3
INSERT INTO detalii_comenzi (id_detaliu,id_comanda, id_carte, cantitate, pret_unitar,status_comanda) 
VALUES (22, 12, 3,1, 25,'A');

SELECT total_comanda FROM comenzi WHERE id_comanda = 12;


//32.Să se creeze un declanșator la nivel de instructiune care să numere câte cărți sunt disponibile
//în stoc după fiecare operație de actualizare a tabelului carti.

CREATE OR REPLACE TRIGGER log_stoc_dupa_update
AFTER UPDATE ON carti
DECLARE
    v_total_stoc NUMBER;
BEGIN
    SELECT SUM(stoc) INTO v_total_stoc FROM carti;

    DBMS_OUTPUT.PUT_LINE('Stocul total de cărți după actualizare este: ' || v_total_stoc);
END;
/

UPDATE carti SET stoc = stoc + 5 WHERE id_carte = 1;

//33.Să se creeze un declanșator la nivel de instructiune care verifică, după fiecare INSERT în tabelul
//comenzi, dacă totalul comenzilor din tabel depășește 10.000. Dacă această
//condiție este îndeplinită, se va afișa un mesaj în consolă.

CREATE OR REPLACE TRIGGER verifica_total_comenzi
AFTER INSERT ON comenzi
DECLARE
    v_total_comenzi NUMBER;
BEGIN
    SELECT SUM(total_comanda) INTO v_total_comenzi FROM comenzi;

    IF v_total_comenzi > 10000 THEN
        DBMS_OUTPUT.PUT_LINE('Atenție: Totalul comenzilor a depășit 10.000 RON!');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Totalul comenzilor este: ' || v_total_comenzi || ' RON.');
    END IF;
END;
/

INSERT INTO comenzi (id_comanda, id_client, data_comanda, total_comanda)
VALUES (22, 1, TO_DATE('2025-01-01', 'YYYY-MM-DD'), 6000);
select * from comenzi

//34.Să se creeze un declanșator care, după fiecare INSERT în tabelul autori, numără câți autori
//există în baza de date și afișează acest număr în consolă.

CREATE OR REPLACE TRIGGER log_numar_autori
AFTER INSERT ON autori
DECLARE
    v_total_autori NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_total_autori FROM autori;

    DBMS_OUTPUT.PUT_LINE('Numărul total de autori este acum: ' || v_total_autori);
END;
/

INSERT INTO autori (id_autor, nume, prenume, data_nasterii)
VALUES (24, 'Simons', 'Paulina', TO_DATE('1950-01-15', 'YYYY-MM-DD'));

select * from clienti

