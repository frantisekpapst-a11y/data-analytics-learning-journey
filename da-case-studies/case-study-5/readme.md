# Case Study 5 - E-commerce Data Cleaning & Analysis

## Popis projektu
Mini case study zaměřená na:
- čištění dat v Power Query
- validaci zákaznických dat
- analýzu tržeb a marží
- normalizaci a standardizaci dat
- základní business insighty

Projekt simuluje reálný workflow junior datového analytika.

---

# Použité technologie
- MS Excel
- Power Query
- JSON
- základní statistika
- datová analytika

---

# Struktura projektu

```text
data-analytics-workspace/
│
├── json/
│   ├── ecommerce_customers_2025.json
│   ├── ecommerce_sales_2025.json
│   ├── ecommerce_marketing_2025.json
│
├── outputs/
│   └── ecommerce_sales_customers_2025_output.xlsx
│
├── processed/
│   └── ecommerce_sales_customers_2025_processed.xlsx
│
├── sql/
│   └── ecommerce_analysis.sql
│   └── sql_notes.md
│
├── README.md
└── notes.md
```

---

# Použité datasety

## Customers
Obsahuje:
- customer_id
- name
- region
- email
- age
- registration_date

## Sales
Obsahuje:
- order_id
- customer_id
- product
- revenue
- cost
- region

## Marketing
Dataset připravený pro další analytické části projektu.

---

# Co bylo provedeno

## Čištění zákaznických dat
- sjednocení textových hodnot
- odstranění duplicit
- práce s NULL hodnotami
- validace věku
- flagování podezřelých záznamů

Použité flagy:
- `suspicious_flag`
- `email_status`
- `age_status`

---

## Power Query transformace
Použité operace:
- Import JSON
- Expand Record
- Převod datových typů
- Trim / Clean
- Replace Values
- Remove Duplicates
- Conditional Columns
- Merge Queries

---

# Analýza prodejů

## Výpočty
Byly vytvořeny:
- margin
- margin %
- suspicious_order

Vzorce:

```text
margin = revenue - cost
margin_pct = margin / revenue
```

---

# Normalizace dat

Použita min-max normalizace:

```text
(value - min) / (max - min)
```

Cíl:
- převod hodnot na škálu 0–1
- příprava dat pro analytiku / AI

---

# Standardizace dat (z-score)

Použit vzorec:

```text
(value - average) / standard deviation
```

Použitý Excel vzorec:

```excel
=([@revenue]-PRŮMĚR([revenue]))/SMODCH.VÝBĚR([revenue])
```

Cíl:
- identifikace outlierů
- statistické porovnání hodnot
- fraud / suspicious detection

---

# Hlavní business závěry

## Sales
- TV má vysoké tržby, ale nižší marži
- Notebook je suspicious objednávka (outlier)
- Smartwatch má stabilně vysokou marži

---

## Normalizace
- Notebook = 1,0
- Headphones = 0,0

Notebook výrazně vyčnívá oproti ostatním objednávkám.

---

## Standardizace (z-score)
- Notebook = 2,1 → statistický outlier
- TV = 0,4 → lehce nad průměrem
- Smartwatch a Headphones = běžné hodnoty

Statistika potvrzuje suspicious objednávku notebooku.

---

## Zákazníci
- Jan Novak = duplicitní zákazník
- Petr Sedlacek = chybějící email + suspicious věk
- Eva Mala = nevalidní věk
- Marie Kralova = chybějící email

---

# Co jsem se naučil
- import JSON do Power Query
- práce s Record a Table strukturou
- merge queries
- conditional columns
- data quality checks
- základní statistické transformace
- business interpretace dat

---

## SQL analytická část projektu

## SQL analytická část projektu

V rámci case study byla vytvořena také SQL analytická vrstva nad vyčištěnými daty.

### Procvičené SQL oblasti

- GROUP BY a agregace
- HAVING
- CASE
- JOIN / LEFT JOIN
- subquery
- CTE (Common Table Expressions)
- EXISTS
- IN
- ROW_NUMBER()
- ranking logika
- práce s NULL hodnotami
- business filtering

### Realizované analytické úlohy

- revenue analysis podle produktů
- margin analysis podle produktů
- identifikace suspicious objednávek
- risk scoring pomocí CASE
- identifikace problémových zákazníků
- detekce chybějících dat
- propojení zákazníků a objednávek pomocí JOIN
- filtrování problémových objednávek pomocí IN
- filtrování problémových objednávek pomocí EXISTS
- business filtering pomocí HAVING
- ranking produktů podle revenue
- TOP produkt podle revenue pomocí ROW_NUMBER()

### Hlavní business zjištění

- Notebook generuje nejvyšší revenue i margin, ale jedná se o suspicious outlier objednávku.
- Smartwatch vykazuje stabilní výkon napříč objednávkami.
- Headphones mají nízké revenue i margin.
- Dataset obsahuje problémové zákazníky:
  - chybějící email,
  - nevalidní věk,
  - NULL hodnoty.
- SQL analýza potvrdila závěry z předchozí EDA/SDA části projektu.

### Důležité poznatky

- HAVING filtruje agregované výsledky.
- EXISTS kontroluje existenci souvisejících řádků.
- CTE výrazně zlepšuje čitelnost komplexnějších query.
- JOIN logika závisí na business kontextu.
- Stejný analytický problém lze řešit více SQL přístupy.

---

# Poznámka
Projekt slouží jako studijní case study v rámci learning path datové analytiky.

