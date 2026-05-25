# Case Study 6 – EDA a SDA analýza ecommerce datasetu

## Popis projektu

Tato case study byla zaměřena na praktické použití:

- EDA (Exploratory Data Analysis)
- SDA (Statistical Data Analysis)
- práce s Power Query
- detekce outlierů
- normalizace a standardizace dat
- interpretace business dat v Excelu

Dataset obsahoval ecommerce objednávky a zákaznická data.

---

# Použité nástroje

- MS Excel
- Power Query
- Kontingenční tabulky
- Základní statistické funkce
- Podmíněné formátování

---

# Obsah projektu

## 1. Čištění dat v Power Query

Byly identifikovány a řešeny následující problémy:

- duplicitní zákazníci
- chybějící emaily
- podezřelé hodnoty věku
- NULL hodnoty
- suspicious flag pro anomálie

Použité techniky:

- Remove Duplicates
- Replace Values
- Conditional Columns
- Merge Queries
- datové typy
- práce s NULL

---

# 2. EDA – Exploratory Data Analysis

Byla vytvořena základní exploratorní analýza:

- průměrné tržby podle produktu
- počet objednávek
- marže a margin %
- identifikace outlierů

## Závěry EDA

- Notebook generuje výrazně vyšší tržbu než ostatní produkty
- jedná se však pouze o jednu objednávku
- nelze dělat silné business závěry bez většího vzorku dat
- malý vzorek výrazně zvyšuje riziko špatné interpretace

---

# 3. Normalizace dat

Byla použita Min-Max normalizace:

```excel
=([@revenue]-MIN([revenue]))/(MAX([revenue])-MIN([revenue]))
```

## Závěry

- Notebook dosáhl hodnoty 1,0
- Headphones dosáhly hodnoty 0,0
- ostatní produkty se nacházely mezi těmito extrémy

Normalizace pomohla převést data na společnou škálu 0–1.

---

# 4. Standardizace dat (z-skóre)

Byla použita standardizace pomocí z-score:

```excel
=([@revenue]-PRŮMĚR([revenue]))/SMODCH.VÝBĚR([revenue])
```

## Závěry

- Notebook měl z-score cca 2,1
- objednávka byla statisticky výrazně odlišná
- TV bylo mírně nad průměrem
- Smartwatch a Headphones byly lehce pod průměrem

---

# 5. SDA – Statistical Data Analysis

Byl proveden pokus o t-test mezi:

- Notebook revenue
- ostatní revenue

## Výsledek

T-test nebylo možné korektně provést, protože skupina Notebook obsahovala pouze jednu hodnotu.

Pro statistický test je potřeba více pozorování v obou skupinách, aby bylo možné vypočítat:

- rozptyl
- směrodatnou odchylku
- statistickou významnost

---

# Business interpretace

Objednávka notebooku za 125 000 Kč byla označena jako suspicious order.

To však automaticky neznamená chybu.

Může se jednat například o:

- VIP zákazníka
- B2B objednávku
- validní outlier
- fraud
- chybu v datech

Úkolem analytika není okamžitě určit příčinu, ale:

- identifikovat anomálii
- upozornit na ni
- doporučit další ověření

---

# Klíčové poznatky

## Technické dovednosti

- Power Query
- merge datasetů
- čištění dat
- NULL handling
- normalizace
- standardizace
- kontingenční tabulky
- základní statistická analýza

## Analytické myšlení

Tato case study ukázala důležitý princip:

> Outlier automaticky neznamená chybu.

Stejně důležité jako samotný výpočet je:

- pochopení limitů dat
- velikosti vzorku
- interpretace výsledků
- business kontext

---

# Struktura projektu

```text
data-analytics-workspace/
│
├── excel/
│   ├── ecommerce_sales_EDA_SDA_2025.xlsx
│
├── screenshots/
│   ├── eda_analysis.png
│   ├── sda_analysis.png
│   ├── processed_dataset.png
│   ├── summary.png
│
└── README.md
```

---

# Screenshots

Projekt obsahuje screenshoty:

- EDA analýzy
- SDA analýzy
- finálního datasetu
- summary závěrů

---

# Autor

František Papst  
Learning Journey – Data Analytics
