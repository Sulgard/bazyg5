INSERT INTO postac(nazwa,rodzaj,data_ur,wiek) VALUES
('Bjorn','wiking','1551-03-15',31),
('Drozd','ptak','1581-04-03',1),
('Tesciowa','kobieta','1300-01-01',282);

UPDATE postac SET wiek=88 WHERE nazwa='Tesciowa';

SELECT * FROM postac;

CREATE TABLE walizka(id_walizki INT AUTO_INCREMENT PRIMARY KEY,pojemnosc INT UNSIGNED,kolor ENUM('rozowy','czerwony','teczowy','zolty'),id_wlasciciela INT, FOREIGN KEY (id_wlasciciela) REFERENCES postac(id_postaci) ON DELETE CASCADE);

ALTER TABLE walizka ALTER kolor SET DEFAULT 'rozowy';

INSERT INTO walizka (pojemnosc,kolor,id_wlasciciela) VALUES
(100,'czerwony',1),
(200,'rozowy',3);

CREATE TABLE izba(adres_budynku INT, 
nazwa_izby CHAR(40), 
 PRIMARY KEY (adres_budynku,nazwa_izby),
 metraz INT UNSIGNED, 
 wlascicel INT, 
 FOREIGN KEY(wlascicel) REFERENCES postac(id_postaci));
 
 ALTER TABLE izba ADD COLUMN kolor ENUM('bialy','czarny','brazowy') DEFAULT 'czarny' AFTER metraz;
 
INSERT INTO izba (adres_budynku,nazwa_izby,metraz,wlascicel) VALUES(1,'spizarnia',80,1);

CREATE TABLE przetwory(
id_przetworu INT PRIMARY KEY,
rok_produkcji DATE,
id_wykonawcy INT,
FOREIGN KEY (id_wykonawcy) REFERENCES postac(id_postaci),
zawartosc VARCHAR(100),
dodatek VARCHAR(50) DEFAULT 'papryczka chilli',
id_konsumenta INT,
FOREIGN KEY (id_konsumenta) REFERENCES postac(id_postaci)
);

DELETE FROM przetwory WHERE id_przetworu = 1;

ALTER TABLE przetwory MODIFY rok_produkcji INT(4) DEFAULT 1580;

INSERT INTO przetwory (id_przetworu,rok_produkcji,id_wykonawcy,zawartosc,id_konsumenta) VALUES (1,1582,1,'bigos',3);

INSERT INTO postac(nazwa,rodzaj,data_ur,wiek) VALUES
('Abi','wiking','1551-03-15',31),
('Banki','wiking','1552-05-12',30),
('Bersi','wiking','1550-06-13',32),
('Dan','wiking','1553-02-03',29),
('Engli','wiking','1549-01-01',33);

CREATE TABLE statek (
nazwa_statku VARCHAR(50) PRIMARY KEY,
rodzaj_statku ENUM('drakar','knar'),
data_wodowania INT(4),
max_ladownosc INT UNSIGNED
);

INSERT INTO statek (nazwa_statku,rodzaj_statku,max_ladownosc) VALUES 
('jamnik','knar',7),
('szyszka','knar',7);

ALTER TABLE postac ADD COLUMN funkcja VARCHAR(40) AFTER rodzaj;

UPDATE postac SET funkcja='kapitan' WHERE nazwa='Bjorn';

ALTER TABLE postac ADD COLUMN statek VARCHAR(50) AFTER funkcja;

ALTER TABLE postac ADD FOREIGN KEY (statek) REFERENCES statek(nazwa_statku);

ALTER TABLE postac MODIFY statek VARCHAR(50);

UPDATE postac SET statek='jamnik' WHERE rodzaj = 'wiking';

UPDATE postac SET statek='jamnik' WHERE rodzaj = 'ptak';

DELETE FROM izba WHERE adres_budynku = 1 AND nazwa_izby = 'spizarnia';

DROP TABLE izba;



