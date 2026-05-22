# SQL Practice — DB Fiddle

## Co jsem si vyzkoušel
- vytvoření tabulky pomocí CREATE TABLE
- vložení dat pomocí INSERT INTO
- zobrazení dat pomocí SELECT
- práci s databází v DB Fiddle

## Použité SQL příkazy

### CREATE TABLE
Vytvoří databázovou tabulku.

### INSERT INTO
Vloží data do tabulky.

### SELECT
Vrátí data z databáze.

## Důležité poznatky

- SQL syntaxe se může lišit podle databáze.
- MySQL používá AUTO_INCREMENT.
- SQL Server používá IDENTITY.
- VARCHAR ukládá textová data.
- PRIMARY KEY jednoznačně identifikuje řádek.

## Ukázka dotazu

```sql
SELECT *
FROM zakaznici;

Výsledek

Tabulka obsahovala dva zákazníky:

Jan — Praha
Eva — Brno
