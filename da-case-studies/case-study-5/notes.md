# Notes

## Co bylo nejtěžší
- orientace v Power Query UI
- práce s NULL hodnotami
- conditional columns
- merge queries
- práce se strukturovanými odkazy v Excel tabulkách

---

# Důležité poznatky

## JSON vs CSV
JSON:
- zachovává strukturu dat
- podporuje Record / List objekty
- častý formát pro API

CSV:
- jednodušší tabulkový formát
- vhodný pro export/import
- méně flexibilní

---

## Power Query
Power Query není jen „čištění dat“.

Je to:
- ETL nástroj
- příprava dat pro reporting
- základ datových pipeline
- bridge mezi Excelem, SQL a BI nástroji

---

# ETL
ETL znamená:

```text
Extract → Transform → Load
```

## Extract
Načtení dat:
- JSON
- CSV
- API
- databáze

## Transform
Úprava dat:
- čištění
- validace
- merge
- výpočty
- normalizace

## Load
Nahrání dat:
- Excel
- SQL
- Power BI
- dashboard

---

# Normalizace
Použita:
```text
(value - min) / (max - min)
```

Použití:
- machine learning
- scoring
- clustering
- porovnávání dat

Výsledek:
- hodnoty 0–1

---

# Standardizace (z-score)
Použita:
```text
(value - average) / standard deviation
```

Použitý Excel vzorec:

```excel
=([@revenue]-PRŮMĚR([revenue]))/SMODCH.VÝBĚR([revenue])
```

Použití:
- hledání outlierů
- suspicious detection
- statistická analýza

---

# Business insight

## Notebook objednávka
- revenue 125k
- z-score 2.1
- suspicious_order = YES

Statistika i business logika potvrzují podezřelou objednávku.

Možné vysvětlení:
- VIP zákazník
- B2B objednávka
- chyba dat
- fraud risk

---

# Data quality issues

## Duplicity
Jan Novak:
- duplicitní zákazník
- problém pro reporting a KPI

## Missing data
- chybějící emaily
- nevalidní věk
- NULL hodnoty

Důsledek:
- nižší kvalita dat
- problém pro marketing
- problém pro analytiku

---

# Co jsem si uvědomil
Analytika není jen:
```text
„počítání v Excelu“
```

Ale hlavně:
- interpretace dat
- hledání problémů
- business kontext
- validace dat
- rozhodování

---

# Další krok
- SQL nad stejnými daty
- Power BI dashboard
- Python / pandas
- AI workflow
- automatizace datových pipeline
