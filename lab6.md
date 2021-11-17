## Zadanie 1. workbench <p>&nbsp;</p>

### a)
```sql
SELECT AVG(waga) FROM kreatura where rodzaj = 'wiking';
```

### b)

```sql
SELECT count(nazwa) AS liczba, avg(waga) ,rodzaj  FROM kreatura group by rodzaj;
```
### c)

```sql
SELECT  avg(2021 - year(dataUr)), rodzaj FROM kreatura group by rodzaj;
```



## Zadanie 2. <p>&nbsp;</p>

### a)
```sql
SELECT sum(waga),rodzaj from zasob group by rodzaj;
```
### b)

```sql
SELECT nazwa, avg(waga) AS sr_waga
FROM zasob
WHERE ilosc >= 4 
group by nazwa
HAVING sum(waga) > 10;
```

### c)

```sql
SELECT count(distinct nazwa),rodzaj from zasob WHERE ilosc >= 1 group by rodzaj;  
```
## Zadanie 3. <p>&nbsp;</p>

### a)
```sql
SELECT nazwa, sum(ilosc) 
FROM kreatura k,ekwipunek e 
WHERE e.idKreatury=k.idKreatury group by nazwa;
```
### b)

```sql
SELECT  k.idKreatury,z.nazwa 
from kreatura k, ekwipunek e, zasob z 
WHERE e.idZasobu=z.idZasobu AND e.idKreatury=k.idKreatury;

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
