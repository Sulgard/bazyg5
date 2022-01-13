#### 1.Napisz wyzwalacz, który przed wstawieniem lub modyfikacją tabeli kreatura sprawdzi czy waga jest większa od zera.

```sql
DELIMITER //
CREATE TRIGGER kreatura_before_insert
BEFORE INSERT ON kreatura
FOR EACH ROW
BEGIN
  IF waga < 0
  THEN
    SET NEW.waga = 0;
  END IF;
END
//
DELIMITER ;
```

#### 2.Stwórz tabelę archiwum_wypraw z polami id_wyprawy, nazwa, data_rozpoczecia, data_zakonczenia, kierownik (varchar), do której będą wstawiane rekordy po usunięciu z tabeli wyprawa. Do kolumny kierownik wstawiane jest nazwa kreatury na podstawie usuwanego id_kreatury.

```sql


```
