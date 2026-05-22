# Statistické poznámky – Case Study 03

## Extrémní hodnota (Outlier)

Dataset obsahuje jednu výrazně extrémní hodnotu:

```text
25 000 Kč
```

Tato hodnota výrazně ovlivňuje:
- průměr,
- rozptyl,
- směrodatnou odchylku,
- celkový tvar distribuce.

Kvůli této extrémní objednávce:
- je průměr výrazně vyšší než medián,
- distribuce dat je pravostranně šikmá.

---

## Průměr vs medián

### Průměr
Je citlivý na extrémní hodnoty.

### Medián
Je vůči extrémům odolnější a v tomto datasetu lépe reprezentuje typickou hodnotu objednávky.

---

## Distribuce dat

Histogram ukazuje:
- pravostranně šikmé rozdělení,
- většinu hodnot v nižších intervalech,
- jeden výrazný outlier vytvářející dlouhý pravý ocas distribuce.

---

## Poznámka k IQR

Výsledek interkvartilního rozpětí (IQR) se může mírně lišit podle použité metody výpočtu kvartilů.

### Ruční výpočet
Používá mediány dolní a horní poloviny dat.

### Excel
Používá interpolaci pomocí funkce:

```excel
=QUARTIL.INC()
```

Proto:
- jsou malé rozdíly ve výsledcích běžné,
- oba přístupy jsou validní.

---

## Citlivost dat

I když dataset neobsahuje přímé osobní údaje, může být obchodně citlivý.

Doporučené postupy:
- šifrované úložiště,
- omezený přístup,
- pravidelné zálohování,
- oddělená archivace raw a processed dat.

---

## Hlavní analytické závěry

- Dataset není normálně rozdělený.
- Distribuce je ovlivněna jedním výrazným outlierem.
- Medián je vhodnější ukazatel typické objednávky než průměr.
- Variabilita dat je vysoká.
- Histogram pomáhá rychle odhalit asymetrii distribuce.
