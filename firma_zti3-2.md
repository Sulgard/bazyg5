### 1. Wyświetl nazwę działu i minimalną, maksymalną i średnią wartość pensji w każdym dziale.



```sql
SELECT min(pensja), max(pensja), avg(pensja),dzial FROM pracownik GROUP BY dzial;
```

### 2.Wyświetl pełną nazwę klienta, wartość zamówienia dla 10 najwyższych wartości zamówienia.

```sql
SELECT k.id_klienta,k.pelna_nazwa,sum(pz.ilosc*t.cena_zakupu) as wartosc_zamowienia FROM klient k
LEFT JOIN zamowienie z
ON z.klient=k.id_klienta
LEFT JOIN pozycja_zamowienia pz
ON z.id_zamowienia=pz.zamowienie
LEFT JOIN towar t
ON pz.towar=t.id_towaru
GROUP BY k.id_klienta
ORDER BY wartosc_zamowienia DESC LIMIT 10;
```

### 3.Wyświetl wartość przychodu dla każdego roku. Dane posortuj malejąco według sumy wartości zamówień.

```sql
SELECT YEAR(z.data_zamowienia) as rok,sum(pz.ilosc*pz.cena) as wartosc_zamowienia FROM zamowienie z 
LEFT JOIN pozycja_zamowienia pz
ON z.id_zamowienia=pz.zamowienie
group by YEAR(z.data_zamowienia);
```
### 4.Wyświetl sumę wartości wszystkich anulowanych zamówień.

```sql
SELECT sum(pz.ilosc*pz.cena) as wartosc_zamowienia FROM zamowienie z 
LEFT JOIN pozycja_zamowienia pz
ON z.id_zamowienia=pz.zamowienie
WHERE z.status_zamowienia = 6;
```

### 5.Wyświetl liczbę zamówień i sumę zamówień dla każdego miasta z podstawowego adresu klientów.

```sql
SELECT ak.miejscowosc, count(id_zamowienia) as liczba_zamowien,sum(pz.cena*pz.ilosc) as wartosc FROM adres_klienta ak
RIGHT JOIN zamowienie z
ON ak.klient=z.klient
RIGHT JOIN pozycja_zamowienia pz
ON pz.zamowienie=z.id_zamowienia
WHERE ak.typ_adresu = 1
GROUP BY ak.miejscowosc;
```

### 6.Wyświetl dotychczasowy dochód firmy biorąc pod uwagę tylko zamówienia zrealizowane.
```sql
SELECT (sum(pz.ilosc*pz.cena) - sum(pz.ilosc*t.cena_zakupu)) as dochod from pozycja_zamowienia pz
LEFT JOIN zamowienie z 
ON z.id_zamowienia=pz.zamowienie
LEFT JOIN status_zamowienia sz
ON sz.id_statusu_zamowienia=z.status_zamowienia
LEFT JOIN towar t 
ON t.id_towaru=pz.towar
WHERE id_statusu_zamowienia = 5;
```

### 7.Policz i wyświetl dochód (przychód z zamówień i cena zakupu towaru) w każdym roku działalności firmy.
```sql
SELECT year(data_zamowienia)as rok,(sum(pz.ilosc*pz.cena) - sum(pz.ilosc*t.cena_zakupu)) as dochod from pozycja_zamowienia pz
LEFT JOIN zamowienie z 
ON z.id_zamowienia=pz.zamowienie
LEFT JOIN status_zamowienia sz
ON sz.id_statusu_zamowienia=z.status_zamowienia
LEFT JOIN towar t 
ON t.id_towaru=pz.towar
WHERE id_statusu_zamowienia = 5
GROUP BY rok;
```

### 8.Wyświetl wartość aktualnego stanu magazynowego z podziałem na kategorię produktów.
```sql
SELECT k.nazwa_kategori,sum(t.cena_zakupu*sm.ilosc) as wartosc FROM kategoria k
LEFT JOIN towar t
ON t.kategoria=k.id_kategori
LEFT JOIN stan_magazynowy sm
ON sm.towar=t.id_towaru
GROUP BY k.nazwa_kategori;
```

### 9.Przygotuj zapytanie, które wyświetli dane w poniższej postaci (policz ilu pracowników urodziło się w danym miesiącu - uwaga na porządek sortowania).

```sql
SELECT monthname(data_urodzenia) AS miesiac, count(id_pracownika) FROM pracownik 
GROUP BY MONTH(data_urodzenia), 
monthname(data_urodzenia) ORDER BY MONTH(data_urodzenia);
```

### 10.#Wyświetl imię i nazwisko pracownika i koszt jaki poniósł pracodawca od momentu jego zatrudnienia.
```sql
SELECT p.imie, p.nazwisko, timestampdiff(MONTH, data_zatrudnienia, curdate()) * p.pensja
FROM pracownik p;
```
