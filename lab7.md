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
SELECT w.nazwa,SUM(e.ilosc) AS suma_ekwipunku FROM wyprawa w 
LEFT JOIN kreautra k 
ON w.kierownik=k.idKreatury
LEFT JOIN ekwipunek e
ON k.idKreatury=e.idKreatury
GROUP BY w.nazwa;
```



## Zadanie 2. <p>&nbsp;</p>

### a)
```sql
SELECT w.nazwa,GROUP_CONCAT(k.nazwa) AS imiona_uczestnikow,count(u.id_uczestnika) AS liczba_uczestnikow FROM wyprawa w
LEFT JOIN uczestnicy u
ON w.id_wyprawy=u.id_wyprawy
LEFT JOIN kreautra k 
ON k.idKreatury=u.id_uczestnika
GROUP BY w.nazwa;
```
### b)

```sql
SELECT e.idEtapu, s.nazwa, w.data_rozpoczecia FROM etapy_wyprawy e 
LEFT JOIN wyprawa w
ON w.id_wyprawy=e.idWyprawy
LEFT JOIN sektor s 
ON e.sektor=s.id_sektora
ORDER BY data_rozpoczecia ASC;

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



## Zadanie 4. <p>&nbsp;</p>

### a)
```sql


```
### b)

```sql

```



## Zadanie 5. <p>&nbsp;</p>

### a)
```sql
```

