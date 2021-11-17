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
SELECT k.nazwa,e.idEkwipunku
from kreatura k 
LEFT JOIN ekwipunek e 
ON k.idKreatury=e.idKreatury
WHERE e.idEkwipunku is null;
```

## Zadanie 4. <p>&nbsp;</p>

### a)
```sql
SELECT k.nazwa,z.nazwa,k.dataUr 
from kreatura k 
LEFT JOIN ekwipunek e
ON k.idKreatury=e.idKreatury 
LEFT JOIN zasob z
ON z.idZasobu=e.idZasobu
WHERE k.dataUr between '1670-01-01' AND '1677-10-05';

```
### b)

```sql
SELECT k.nazwa,k.dataUr,z.nazwa
from kreatura k 
LEFT JOIN ekwipunek e
ON k.idKreatury=e.idKreatury 
LEFT JOIN zasob z
ON z.idZasobu=e.idZasobu
WHERE z.rodzaj = 'jedzenie'  order by k.dataUr desc limit 5;
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
