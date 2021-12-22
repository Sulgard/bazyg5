### 1.Wyświetl imie, nazwisko i nazwę działu każdego pracownika.

```sql
SELECT p.imie, p.nazwisko, d.nazwa FROM pracownik p 
LEFT JOIN dzial d 
ON p.dzial=d.id_dzialu;
```

### 2.Wyświetl nazwę towaru, nazwę kategorii oraz ilość towaru i posortuj dane po kolumnie ilość malejąco.

```sql
SELECT t.nazwa_towaru, k.nazwa_kategori, sm.ilosc FROM towar t 
LEFT JOIN kategoria k 
ON t.kategoria=k.id_kategori
LEFT JOIN stan_magazynowy sm
ON t.id_towaru=sm.towar
ORDER BY sm.ilosc ASC;
```

### 3.Wyświetl wszystkie anulowane zamówienia.

```sql
SELECT * FROM zamowienie z
LEFT JOIN status_zamowienia sz
ON  z.status_zamowienia=sz.id_statusu_zamowienia
WHERE z.status_zamowienia = 6;
```

### 4.Wyświetl wszystkich klientów, których adres podstawowy znajduje się w miejscowości Olsztyn.

```sql
SELECT * FROM klient k 
LEFT JOIN adres_klienta ak 
ON k.id_klienta=ak.klient
LEFT JOIN typ_adresu ta
ON ak.typ_adresu=ta.id_typu
WHERE ta.id_typu = 3 AND  ak.miejscowosc = 'Olsztyn';
```

### 5.Wyświetl wszystkie nazwy jednostek miary, które nie zostały nigdy wykorzystane w tabeli stan_magazynowy.

```sql
SELECT jm.nazwa FROM jednostka_miary jm
LEFT JOIN stan_magazynowy sm
ON jm.id_jednostki=sm.jm
WHERE sm.jm IS NULL;
```

### 6. Wyświetl numer zamówienia, nazwę towaru, ilosc i cenę dla zamówień złożonych w 2018 roku.
