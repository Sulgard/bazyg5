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

