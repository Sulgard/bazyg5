## Zadanie 1. <p>&nbsp;</p>

### a)
```sql
CREATE TABLE kreatura AS (SELECT * FROM wikingowie.kreatura); 
CREATE TABLE zasob AS (SELECT * FROM wikingowie.zasob); 
CREATE TABLE ekwipunek AS (SELECT * FROM wikingowie.ekwipunek); 
```

### b)

```sql

SELECT * FROM zasob;
```

### c)

```sql
SELECT * FROM zasob WHERE rodzaj = 'jedzenie';

```

### d)

```sql
SELECT idZasobu,ilosc FROM ekwipunek WHERE idKreatury IN (1,3,5);

```



## Zadanie 2. <p>&nbsp;</p>

### a)
```sql
SELECT * FROM kreatura WHERE rodzaj != 'wiedzma' AND udzwig >= 50;
```
### b)

```sql
SELECT * FROM zasob WHERE waga BETWEEN 2 AND 5;
```

### c)

```sql
SELECT * FROM kreatura WHERE nazwa LIKE '%or%' AND udzwig BETWEEN 30 AND 70;
```
## Zadanie 3. <p>&nbsp;</p>

### a)
```sql
SELECT * FROM zasob WHERE MONTH(dataPozyskania) BETWEEN 7 AND 8;
```
### b)

```sql
SELECT * FROM zasob ORDER BY waga ASC;
```

### c)

```sql
SELECT * FROM kreatura ORDER BY dataUr ASC LIMIT 5;

```

## Zadanie 4. <p>&nbsp;</p>

### a)
```sql

SELECT DISTINCT rodzaj FROM zasob;

```
### b)

```sql
SELECT CONCAT(nazwa, ' ', rodzaj) FROM kreatura WHERE rodzaj LIKE 'wi%';

```

### c)

```sql
SELECT nazwa,waga * ilosc AS waga FROM zasob WHERE YEAR(dataPozyskania) BETWEEN '2000' AND '2007';
```

## Zadanie 5. <p>&nbsp;</p>

### a)
```sql
SELECT nazwa, waga *0.7 AS jedzenie , waga* 0.3 AS odpady FROM zasob WHERE rodzaj = 'jedzenie';
```
### b)

```sql
SELECT * FROM zasob WHERE rodzaj IS NULL;
```

### c)

```sql
SELECT DISTINCT(rodzaj) FROM zasob ORDER BY rodzaj ASC;
SELECT DISTINCT nazwa, rodzaj FROM zasob WHERE nazwa LIKE 'Ba%' OR nazwa LIKE '%os' ORDER BY nazwa ASC;
```

