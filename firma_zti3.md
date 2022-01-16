### 1.Wyświetl imię i nazwisko każdego pracownika i jego rok urodzenia.

```sql
SELECT imie, nazwisko, data_urodzenia FROM pracownik;
```

### 2.Wyświetl imię i nazwisko pracowników oraz ich wiek w latach (bez uwzględniania miesiąca i dnia urodzenia).

```sql
SELECT imie, nazwisko, YEAR(CURDATE()) - YEAR(data_urodzenia) as wiek FROM pracownik;
```

### 3.Wyświetl nazwę działu i liczbę pracowników przypisanych do każdego z nich.

```sql
SELECT d.nazwa,count(p.dzial) as liczba_pracownikow FROM dzial d
LEFT JOIN pracownik p
ON p.dzial=d.id_dzialu
GROUP BY d.nazwa;
```

### 4.Wyświetl nazwę kategorii oraz liczbę produktów w każdej z nich.

```sql
SELECT distinct(k.nazwa_kategori),sum(sm.ilosc) as liczba_produktow FROM kategoria k 
LEFT JOIN towar t
ON t.kategoria=k.id_kategori
LEFT JOIN stan_magazynowy sm
ON sm.towar=t.id_towaru
group by k.nazwa_kategori;
```
### 5.Wyświetl nazwę kategorii i w kolejnej kolumnie listę wszystkich produktów należącej do każdej z nich.

```sql
SELECT distinct(k.nazwa_kategori),group_concat(nazwa_towaru) as lista_produktow FROM kategoria k 
LEFT JOIN towar t
ON t.kategoria=k.id_kategori
LEFT JOIN stan_magazynowy sm
ON sm.towar=t.id_towaru
group by k.nazwa_kategori;
```

### 6.Wyświetl średnie zarobki pracowników za zaokrągleniem do 2 miejsc po przecinku.
```sql
SELECT ROUND(avg(pensja)) as srednie_zarobki FROM pracownik;
```

### 7.Wyświetl średnie zarobki pracowników, którzy pracują co najmniej od 5 lat.

```sql
SELECT round(avg(pensja)) as srednie_zarobki FROM pracownik WHERE year(curdate()) - year(data_zatrudnienia) > 5;
```

### 8.Wyświetl 10 najczęściej sprzedawanych produktów.

```sql

```
