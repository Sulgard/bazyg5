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

```
