# Case Study 03 – Orders Analysis

## Cíl projektu

Cílem této case study je analyzovat hodnoty zákaznických objednávek a identifikovat:
- střední hodnoty,
- variabilitu dat,
- extrémní hodnoty (outliers),
- tvar distribuce dat.

Projekt se zároveň zaměřuje na:
- organizaci datového projektu,
- správné pojmenovávání souborů,
- archivaci dat,
- základní zabezpečení dat.

---

## Dataset

Soubor:
`customer_orders_2025_09.csv`

Dataset obsahuje:
- ID zákazníka,
- hodnotu objednávky v Kč.

Ukázka:

| customer_id | order_value |
|---|---|
| 1 | 1200 |
| 2 | 1500 |
| 3 | 1800 |

---

## Struktura projektu

```text
case-study-3/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── outputs/
│
├── notes/
│
└── readme.md
