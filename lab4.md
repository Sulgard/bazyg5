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
CREATE TABLE marynarz LIKE postac;
```

### c)

```sql

```

## Zadanie 5. <p>&nbsp;</p>

### a)
```sql


```
### b)

```sql

```

### c)

```sql

```
### d)
```sql


```
### e)

```sql

```

### f)

```sql

```
