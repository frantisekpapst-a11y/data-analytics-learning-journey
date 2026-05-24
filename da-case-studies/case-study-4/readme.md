# Retail Sales & Marketing Analysis 2025

## 📌 Přehled projektu

Tato case study se zaměřuje na exploratorní analýzu maloobchodních prodejů a výkonu marketingových kampaní během roku 2025.

Cílem analýzy bylo identifikovat:

- trendy v tržbách a zisku,
- nejsilnější a nejslabší regiony,
- nejvýkonnější produktové kategorie,
- sezónnost prodejů,
- odlehlé hodnoty v datech,
- efektivitu marketingových kanálů a kampaní.

Projekt vznikl jako součást mé learning journey v oblasti datové analytiky.

---

# 📂 Struktura projektu

```text
case-study-4/
│
├── datasets/
│   ├── sales_data.csv
│   └── marketing_data.csv
│
├── analysis/
│   └── sales_marketing_analysis.xlsx
│
├── screenshots/
│   └── sales_marketing_analysis.xlsx
│
└── README.md
```

---

# 🛠 Použité nástroje

- Microsoft Excel
- Kontingenční tabulky
- Základní statistická analýza
- Detekce outlierů pomocí IQR
- Analýza marketingových KPI

---

# 📊 Oblasti analýzy

## 1. Analýza tržeb a zisku

Analyzováno bylo:

- revenue podle regionů,
- profit podle regionů,
- revenue podle kategorií produktů,
- vývoj revenue v čase.

### Hlavní zjištění

- Praha generovala nejvyšší revenue i profit.
- Notebooky představují hlavní business segment.
- Audio produkty generují zajímavý objem prodejů.
- Accessories mají nižší revenue, ale relativně solidní marži.

---

# 📈 Analýza sezónnosti

Analýza odhalila výraznou sezónnost:

- slabší letní měsíce,
- silné Q4,
- Black Friday efekt v listopadu,
- výrazný vrchol v prosinci.

### Business interpretace

Poptávka zákazníků výrazně rostla během vánoční sezóny, zejména u prémiových notebooků a elektroniky.

---

# 📉 Detekce outlierů (IQR metoda)

Dataset byl analyzován pomocí IQR metody:

- Q1,
- Q3,
- IQR,
- dolní mez,
- horní mez.

### Zjištění

Bylo identifikováno několik velmi velkých objednávek, které představují outliery.

Tyto outliery pravděpodobně reprezentují:

- nákupy prémiových notebooků,
- firemní zákazníky,
- sezónní velké objednávky.

Distribuce dat je pozitivně vychýlená, protože malé množství velmi vysokých objednávek výrazně zvyšuje průměrné tržby.

---

# 📣 Analýza marketingových kampaní

Výkon marketingu byl vyhodnocován pomocí:

- CTR (Click Through Rate),
- Conversion Rate,
- ROAS (Return On Ad Spend).

### Hlavní zjištění

- Email kampaně dosahovaly nejvyššího ROAS.
- Google Ads generovaly nejvyšší celkové tržby.
- Meta Ads přinášely silný objem výkonu.
- A/B test ukázal, že Banner B překonal Banner A.

---

# 📚 Procvičené dovednosti

V rámci projektu jsem si procvičil:

- exploratorní analýzu dat,
- business interpretaci dat,
- kontingenční tabulky,
- KPI analýzu,
- statistické myšlení,
- detekci outlierů,
- marketingovou analytiku.

---

# 🚀 Další plánovaný rozvoj projektu

Plánované rozšíření projektu:

- dashboard v Power BI,
- SQL verze analýzy,
- Python/pandas analýza,
- pokročilejší vizualizace,
- automatizovaný reporting.

---

# 📝 Poznámky k projektu

## Co jsem si procvičil

- kontingenční tabulky,
- IQR metodu,
- marketing KPI,
- business interpretaci dat,
- práci se sezónností,
- základní statistickou analýzu.

## Co bylo nejtěžší

- interpretace outlierů,
- sezónnost tržeb,
- správné čtení KPI,
- business interpretace výsledků.

## Co chci zlepšit

- Power Query,
- vizualizace,
- SQL analýzy,
- dashboarding,
- Power BI,
- Python analytiku.

---

# 👨‍💻 Autor

František Papst
