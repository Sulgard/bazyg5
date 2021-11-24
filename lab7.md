## Zadanie 1. workbench <p>&nbsp;</p>

### a)
```sql
INSERT INTO kreatura SELECT * FROM wikingowie.kreatura;

CREATE TABLE uczestnicy AS(SELECT * FROM wikingowie.uczestnicy);

CREATE TABLE etapy_wyprawy AS(SELECT * FROM wikingowie.etapy_wyprawy);

CREATE TABLE sektor AS(SELECT * FROM wikingowie.sektor);

CREATE TABLE wyprawa AS(SELECT * FROM wikingowie.wyprawa);
```

### b)

```sql
SELECT k.nazwa FROM kreatura k 
LEFT JOIN uczestnicy u 
ON k.idKreatury=u.id_uczestnika
WHERE u.id_uczestnika is null;
```
### c)

```sql
```



## Zadanie 2. <p>&nbsp;</p>

### a)
```sql
```
### b)

```sql

```

### c)

```sql
```
## Zadanie 3. <p>&nbsp;</p>

### a)
```sql

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
