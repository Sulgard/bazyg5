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
lipiec sierpien
SELECT MONTH('2017/05/25 09:08') AS Month;

SELECT * FROM zasob WHERE MONTH(dataPozyskania) BETWEEN 7 AND 8;
```
### b)

```sql
```

### c)

```sql
```

## Zadanie 4. <p>&nbsp;</p>

### a)
```sql


```
### b)

```sql
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
