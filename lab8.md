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
