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

CREATE TABLE archiwum_wypraw(id_wyprawy INT(11) PRIMARY KEY,
 nazwa VARCHAR(50), 
 data_rozpoczecia DATE, 
 data_zakonczenia DATE, 
 kierownik VARCHAR(50));
```


```sql
DELIMITER //
CREATE TRIGGER wyprawa_after_delete
BEFORE DELETE ON wyprawa
FOR EACH ROW
BEGIN
  DECLARE kierownik varchar(100);
    SET kierownik = (SELECT kreatura.nazwa FROM kreatura WHERE idKreatury=OLD.kierownik);
    INSERT INTO archiwum_wypraw VALUES(OLD.id_wyprawy,OLD.nazwa,OLD.data_rozpoczecia,OLD.data_zakonczenia,kierownik);
END
//
DELIMITER ;
```


#### 3.

```sql
DELIMITER //
CREATE PROCEDURE eliksir_sily(IN id int)
  BEGIN
    UPDATE kreatura SET udzwig = 1.2 * udzwig where idKreatury = id;
  END
  //
DELIMITER ;

CALL eliksir_sily(1); 

```
