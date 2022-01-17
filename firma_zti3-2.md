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

```
