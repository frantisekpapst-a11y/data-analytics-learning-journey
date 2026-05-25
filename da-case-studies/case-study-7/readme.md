# 📊 Case Study 07 – AI Assisted Analytics

## 📌 Popis projektu

Tato case study je zaměřena na využití AI v datové analytice v kombinaci s Excelem.  
Cílem projektu bylo ověřit, jak může AI pomoci při:

- čištění dat,
- sentiment analýze,
- business analýze,
- interpretaci trendů,
- tvorbě management reportu.

Součástí projektu bylo také kritické vyhodnocení AI výstupů a jejich následná validace.

---

# 🛠 Použité nástroje

- Microsoft Excel
- Kontingenční tabulky
- ChatGPT
- Základní business reporting

---

# 📂 Struktura projektu

```text
case-study-7/
│
├── datasets/raw
│   ├── reviews_raw.csv
│   ├── sales_raw.csv
│   └── trend_raw.csv
│
├── outputs
│   ├── business_analysis_report_cz_fixed.pdf
│   ├── sentiment_analyza_recenzi.xlsx
│   └── vycisteny_dataset_final.xlsx
│
└── readme.md
```

---

# 📈 Obsah analýzy

## 1. Data Cleaning

Byla provedena základní standardizace datasetu:

- sjednocení názvů regionů,
- úprava velkých a malých písmen,
- nastavení správných datových typů,
- úprava českého číselného formátu.

---

## 2. Sentiment Analysis

Recenze zákazníků byly pomocí AI rozděleny do kategorií:

- pozitivní,
- negativní,
- neutrální.

Následně byly:
- spočítány jednotlivé kategorie,
- interpretovány hlavní problémy a pozitivní aspekty produktu.

Součástí projektu byla také validace AI interpretace.

---

## 3. Business Analysis

Byla provedena základní business analýza produktů:

- revenue podle produktů,
- průměrná hodnocení,
- identifikace nejsilnějších a nejslabších produktů,
- identifikace potenciálních business rizik.

---

## 4. Trend Analysis

Na základě měsíčního revenue byl vyhodnocen:

- trend růstu,
- směr vývoje,
- jednoduchý forecast dalšího období.

---

## 5. AI Risk Review

Součástí projektu bylo také kritické zhodnocení AI výstupů.

Hlavní zjištění:

- AI poskytla logické a poměrně přesné výstupy.
- Bylo správně upozorněno na malý vzorek dat.
- AI nepřeháněla statistické závěry.
- Přesto je nutná lidská validace výsledků a znalost širšího business kontextu.

Projekt ukázal, že AI může výrazně urychlit analytickou práci, ale finální interpretace by měla vždy projít kontrolou analytika.

---

# 📌 Lessons Learned

- AI může efektivně pomoci s datovou analytikou.
- Human review je stále velmi důležitý.
- Malý dataset výrazně omezuje sílu závěrů.
- Business kontext je klíčový pro správnou interpretaci dat.
- Analytik musí umět rozlišovat mezi:
  - indikací trendu,
  - hypotézou,
  - statisticky potvrzeným závěrem.

---

# 📷 Výstupy projektu

Projekt obsahuje:

- vyčištěný dataset,
- sentiment analýzu,
- business report v PDF,
- trend analýzu revenue.

---

# ⚠️ Poznámka

Projekt používá pouze anonymizovaná a ukázková data určená pro studijní účely.
