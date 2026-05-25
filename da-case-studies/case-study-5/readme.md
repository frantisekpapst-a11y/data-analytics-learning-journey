# Ecommerce Data Cleaning & Analysis

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

# Další krok
Další plánované části learning path:
- SQL analytika nad stejnými daty
- Power BI dashboard
- Python / pandas workflow
- AI a business case studies

---

# Poznámka
Projekt slouží jako studijní case study v rámci learning path datové analytiky.
