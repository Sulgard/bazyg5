## Zadanie1 <p>&nbsp;</p>

### 1. Stwórz tabelę postac z następującymi polami:

```sql
CREATE TABLE postac (
    id_postaci INT AUTO_INCREMENT PRIMARY KEY,
    nazwa VARCHAR(40),
    rodzaj ENUM('wiking','ptak','kobieta'),
    data_ur DATE,
    wiek INT UNSIGNED
);
```

### 2. Do tabeli postac dodaj rekordy, gdzie kolumna nazwa to Bjorn, Drozd, Tesciowa (w pozostałe pola wpisz w miarę sensowne dane) .

```sql
INSERT INTO postac(nazwa,rodzaj,data_ur,wiek) VALUES
('Bjorn','wiking','1551-03-15',31),
('Drozd','ptak','1581-04-03',1),
('Tesciowa','kobieta','1300-01-01',282);
```

### 3. Zmodyfikuj wiek teściowej na 88 lat.

```sql
UPDATE postac SET wiek=88 WHERE nazwa='Tesciowa';
```

## Zadanie 2.
<p>&nbsp;</p>

### 1. Stwórz tabelę walizka:

```sql
CREATE TABLE walizka (
    id_walizki INT AUTO_INCREMENT PRIMARY KEY,
    pojemnosc INT UNSIGNED,
    kolor ENUM('rozowy','czerwony','teczowy','zolty'),
    id_wlasciciela INT,
    FOREIGN KEY (id_wlasciciela) 
    REFERENCES postac(id_postaci) 
    ON DELETE CASCADE
    );
```

### 2. Dodaj do pola kolor wartość domyślną – różowy.

```sql
ALTER TABLE walizka ALTER kolor SET DEFAULT 'rozowy';
```

### 3. Dodaj jedną walizkę dla Bjorna i jedną walizkę dla teściowej.

```sql
INSERT INTO walizka (pojemnosc,kolor,id_wlasciciela) VALUES (100,'czerwony',1),(200,'rozowy',3);
```

## Zadanie 3
<p>&nbsp;</p>

### 1.Stwórz tabelę izba

```sql
CREATE TABLE izba (
    adres_budynku INT, 
    nazwa_izby CHAR(40), 
    PRIMARY KEY (adres_budynku,nazwa_izby),
    metraz INT UNSIGNED, 
    wlascicel INT, 
    FOREIGN KEY (wlascicel) 
    REFERENCES postac(id_postaci)
    );
```

### 2. Za pomocą oddzielnego polecenia dodaj pole kolor izby po polu metraż. Ustaw domyślny kolor na czarny.

```sql
ALTER TABLE izba ADD COLUMN kolor ENUM('bialy','czarny','brazowy') DEFAULT 'czarny' AFTER metraz;
```

### 3. Stwórz izbę spiżarnia.

```sql
INSERT INTO izba (adres_budynku,nazwa_izby,metraz,wlascicel) VALUES (1,'spizarnia',80,1);
```

## Zadanie 4
<p>&nbsp;</p>

### 1. Stwórz tabelę przetwory

```sql
CREATE TABLE przetwory(
id_przetworu INT PRIMARY KEY,
rok_produkcji INT(4),
id_wykonawcy INT,
FOREIGN KEY (id_wykonawcy) 
REFERENCES postac(id_postaci),
zawartosc VARCHAR(100),
dodatek VARCHAR(50) DEFAULT 'papryczka chilli',
id_konsumenta INT,
FOREIGN KEY (id_konsumenta) 
REFERENCES postac(id_postaci)
);
```

### 2. Wstaw bigos z papryczką chilli do tabeli przetwory.

```sql
INSERT INTO przetwory (id_przetworu,rok_produkcji,id_wykonawcy,zawartosc,id_konsumenta) VALUES (1,1582,1,'bigos',3);
```

## Zadanie 5
<p>&nbsp;</p>

### 1. Wstaw 5 wikingów do tabeli postaci.

```sql
INSERT INTO postac(nazwa,rodzaj,data_ur,wiek) VALUES
('Abi','wiking','1551-03-15',31),
('Banki','wiking','1552-05-12',30),
('Bersi','wiking','1550-06-13',32),
('Dan','wiking','1553-02-03',29),
('Engli','wiking','1549-01-01',33);
```

### 2. Stwórz tabelę statek

```sql
CREATE TABLE statek (
nazwa_statku VARCHAR(50) PRIMARY KEY,
rodzaj_statku ENUM('drakar','knar'),
data_wodowania INT(4),
max_ladownosc INT UNSIGNED
);
```

### 3. Dodaj dwa statki do tabeli.

```sql
INSERT INTO statek (nazwa_statku,rodzaj_statku,max_ladownosc) VALUES ('jamnik','knar',7),('szyszka','knar',7);
```
### 4. Dodaj pola do tabeli postac:
### a. funkcja - ciąg znaków.

```sql
ALTER TABLE postac ADD COLUMN funkcja VARCHAR(40) AFTER rodzaj;
```

### 5. Zmień funkcję u Bjorna na kapitan.

```sql
UPDATE postac SET funkcja='kapitan' WHERE nazwa='Bjorn';
```

### 6. Dodaj klucz obcy w tabeli postać odwołujący się do statku.

```sql
ALTER TABLE postac ADD COLUMN statek VARCHAR(50) AFTER funkcja;

ALTER TABLE postac ADD FOREIGN KEY (statek) REFERENCES statek(nazwa_statku);
```

### 7. Powsadzaj wikingów oraz drozda na statki.

```sql
UPDATE postac SET statek='jamnik' WHERE rodzaj = 'wiking';

UPDATE postac SET statek='jamnik' WHERE rodzaj = 'ptak';
```
### 8. Usuń izbę spiżarnia z tabeli izba.

```sql
DELETE FROM izba WHERE adres_budynku = 1 AND nazwa_izby = 'spizarnia';
```

### 9. Usuń tabelę izba.

```sql
DROP TABLE izba;
```
