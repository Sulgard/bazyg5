# 1.Wyświetl imie, nazwisko i nazwę działu każdego pracownika.

```sql
SELECT p.imie, p.nazwisko, d.nazwa FROM pracownik p 
LEFT JOIN dzial d 
ON p.dzial=d.id_dzialu;
```
