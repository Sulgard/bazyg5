###


```sql
SELECT * FROM pracownik;

SELECT imie,nazwisko FROM pracownik ORDER BY nazwisko ASC;

#tabeli pracownik wyświetl imie, nazwisko, pensję dla pracowników urodzonych po roku 1979.

SELECT imie,nazwisko,pensja FROM pracownik WHERE data_urodzenia > '1979-12-30';

SELECT * FROM pracownik WHERE pensja BETWEEN 3500 AND 5000;

SELECT * FROM stan_magazynowy;

SELECT * FROM stan_magazynowy WHERE ilosc > 10;

SELECT * FROM towar;

SELECT * FROM towar WHERE nazwa_towaru LIKE 'A%' OR nazwa_towaru LIKE 'B%' OR nazwa_towaru LIKE 'C%';

SELECT * FROM klient;

SELECT * FROM klient where czy_firma = 0;

SELECT * FROM zamowienie;

SELECT * FROM zamowienie order by data_zamowienia DESC Limit 10;

SELECT * FROM pracownik  order by pensja asc Limit 5;

#LIKE 'a_%

SELECT * FROM towar;

SELECT * FROM towar WHERE nazwa_towaru NOT LIKE '%a%' ORDER BY cena_zakupu DESC LIMIT 10 ;

#Z tabeli towar wyświetl towar, których jednostka miary to 'szt', posortuj po nazwie (ad A do Z) następnie po cenie zakupu malejąco.


SELECT * FROM stan_magazynowy;

SELECT * FROM jednostka_miary;

SELECT * FROM towar t
LEFT JOIN stan_magazynowy sm
ON t.id_towaru=sm.towar
LEFT JOIN jednostka_miary jm
ON sm.jm=jm.id_jednostki
WHERE sm.jm = 3;




```
