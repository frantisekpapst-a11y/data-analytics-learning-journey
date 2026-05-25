# Case Study 6 – EDA a SDA analýza ecommerce datasetu

## Popis projektu

Tato case study byla zaměřena na praktické použití:

- EDA (Exploratory Data Analysis)
- SDA (Statistical Data Analysis)
- kontingenčních tabulek
- základní statistické interpretace dat

V této části byl použit již připravený a vyčištěný dataset z předchozí case study.

---

# Použité nástroje

- MS Excel
- Kontingenční tabulky
- Statistické funkce
- T-test

---

# Obsah projektu

## 1. EDA – Exploratory Data Analysis

Byla vytvořena exploratorní analýza ecommerce objednávek pomocí kontingenční tabulky.

Analyzováno bylo:

- průměrné revenue podle produktu
- počet objednávek
- rozdíly mezi produkty
- potenciální outliery

---

# EDA výsledky

| Produkt | Průměrné revenue | Počet objednávek |
|---|---:|---:|
| Headphones | 2 990 | 2 |
| Notebook | 125 000 | 1 |
| Smartwatch | 8 990 | 3 |
| TV | 49 990 | 1 |

---

# Závěry EDA

- Notebook generuje výrazně vyšší tržbu než ostatní produkty.
- Jedná se však pouze o jednu objednávku.
- Nelze dělat silné business závěry bez většího vzorku dat.
- Malý vzorek výrazně zvyšuje riziko špatné interpretace.

---

# 2. SDA – Statistical Data Analysis

Byl proveden pokus o t-test mezi:

- Notebook revenue
- ostatní revenue

Použit byl:

```text
Dvouvýběrový t-test s nerovností rozptylů
```

---

# Výsledek SDA

T-test nebylo možné korektně provést, protože skupina Notebook obsahovala pouze jednu hodnotu.

Pro statistický test je potřeba více pozorování v obou skupinách, aby bylo možné vypočítat:

- rozptyl
- směrodatnou odchylku
- statistickou významnost

---

# Business interpretace

Objednávka notebooku za 125 000 Kč byla statisticky výrazně odlišná od ostatních objednávek.

To však automaticky neznamená chybu v datech.

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

- kontingenční tabulky
- EDA
- SDA
- práce s outliery
- statistická interpretace dat

---

# Analytické myšlení

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
│   ├── ecommerce_sales_EDA_SDA_2025_output.xlsx
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
