### 1. Z tabeli pracownik wyświetl nazwiska posortowane alfabetycznie od A do Z.


```sql
SELECT imie,nazwisko FROM pracownik ORDER BY nazwisko ASC;

```

### 2. Z tabeli pracownik wyświetl imie, nazwisko, pensję dla pracowników urodzonych po roku 1979.

```sql
SELECT imie,nazwisko,pensja FROM pracownik WHERE data_urodzenia > '1979-12-30';
```
### 3. Z tabeli pracownik wyświetl wszystkie informacje dla pracowników z pensją pomiędzy 3500 a 5000.
```sql
SELECT * FROM pracownik WHERE pensja BETWEEN 3500 AND 5000;

```
### 4. Z tabeli stan_magazynowy wyświetl towary, których ilość jest większa niż 10.
```sql
SELECT * FROM stan_magazynowy WHERE ilosc > 10;
```

### 5. Z tabeli towar wyświetl wszystkie towary, których nazwa zaczyna się od A, B lub C.
```sql
SELECT * FROM towar WHERE nazwa_towaru LIKE 'A%' OR nazwa_towaru LIKE 'B%' OR nazwa_towaru LIKE 'C%';
```

### 6. Z tabeli klient wyświetl wszystkich klientów indywidualnych (nie firmy).
```sql
SELECT * FROM klient where czy_firma = 0;
```

### 7. Z tabeli zamowienie wyświetl 10 najnowszych zamówień.
```sql
SELECT * FROM zamowienie order by data_zamowienia DESC Limit 10;
```
### 8. Z tabeli pracownik wyświetl 5 najmniej zarabiających pracowników.
```sql
SELECT * FROM pracownik  order by pensja asc Limit 5;
```

### 9. Z tabeli towar wyświetl 10 najdroższych towarów, których nazwa nie zawiera litery 'a'.
```sql
SELECT * FROM towar WHERE nazwa_towaru NOT LIKE '%a%' ORDER BY cena_zakupu DESC LIMIT 10 ;
```
### 10. Z tabeli towar wyświetl towar, których jednostka miary to 'szt', posortuj po nazwie (ad A do Z) następnie po cenie zakupu malejąco.

```sql
SELECT * FROM towar t
LEFT JOIN stan_magazynowy sm
ON t.id_towaru=sm.towar
LEFT JOIN jednostka_miary jm
ON sm.jm=jm.id_jednostki
WHERE sm.jm = 3;
```

### 11. Stwórz nową tabelę o nazwie towary_powyzej_100, do której wstaw towary, których cena jest większa równa 100. Użyj CREATE ... SELECT.
```sql
CREATE TABLE towary_powyzej_100 SELECT * FROM towar WHERE cena_zakupu > 100;
```

### 12. Stwórz nową tabelę o nazwie pracownik_50_plus na podstawie tabeli pracownik z wykorzystaniem LIKE. Wstaw do tej tabeli wszystkie rekordy z tabeli pracownik gdzie wiek pracownika jest większy równy 50 lat.

```sql
CREATE TABLE pracownik_50_plus LIKE pracownik SELECT * FROM pracownik WHERE getdate() - data_urodzenia > 50;
```
