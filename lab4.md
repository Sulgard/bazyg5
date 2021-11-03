## Zadanie 1. <p>&nbsp;</p>

### a)
```sql

SELECT FROM postac WHERE rodzaj = 'wiking' AND nazwa != 'Bjorn' ORDER BY wiek ASC;
DELETE FROM postac where id_postaci IN (6,8);

```

### b)

```sql

SHOW CREATE TABLE postac;

ALTER TABLE postac DROP FOREIGN KEY ... ;

ALTER TABLE postac DROP PRIMARY KEY ... ;

```



## Zadanie 2. <p>&nbsp;</p>

### a)
```sql
ALTER TABLE postac ADD COLUMN pesel CHAR(11) PRIMARY KEY AFTER id_postaci;
```
### b)

```sql
ALTER TABLE postac MODIFY rodzaj ENUM('wiking','ptak','tesciowa','syrena');
```

### c)

```sql
INSERT INTO postac (nazwa,rodzaj,data_ur,wiek) VALUES ('Gertruda Nieszczera','syrena','1299-03-02',283)
```
## Zadanie 3. <p>&nbsp;</p>

### a)
```sql
UPDATE postac SET statek = 'jamnik' WHERE nazwa LIKE %a%;
```
### b)

```sql
UPDATE statek SET ladownosc = 0.7 * ladownosc WHERE data_wodowania >= '1901-01-01' AND data_wodowania <= '2000-12-31';
```

### c)

```sql
ALTER TABLE postac MODIFY wiek INT UNSIGNED CHECK(wiek<1000);
```

## Zadanie 4. <p>&nbsp;</p>

### a)
```sql
ALTER TABLE postac MODIFY rodzaj ENUM('wiking','ptak','tesciowa','syrena','waz');

INSERT INTO postac (nazwa,rodzaj,data_ur,wiek) VALUES ('Loko','waz','1541-03-15',41);

```
### b)

```sql
CREATE TABLE marynarz SELECT * FROM postac;
```

### c)

```sql

```

## Zadanie 5. <p>&nbsp;</p>

### a)
```sql
UPDATE postac SET statek = NULL WHERE statek = 'jamnik';
```
### b)

```sql
DELETE FROM postac WHERE nazwa = 'Banki';
```

### c)

```sql
DELETE FROM statek WHERE nazwa IN ('jamnik','szyszka')
```
### d)
```sql
DROP table statek;
```
### e)

```sql
CREATE table zwierz(
id INT PRIMARY KEY AUTO_INCREMENT,
nazwa VARCHAR(50),
wiek INT UNSIGNED
);
```

### f)

```sql
INSERT INTO zwierz FROM postac (id_postaci,nazwa,wiek) WHERE rodzaj = 'ptak' AND rodzaj = 'waz';
```
