# Bank Database Design

## Cíl

Procvičení základního databázového návrhu:
- tabulky,
- sloupce,
- primární klíče,
- cizí klíče,
- vztahy mezi tabulkami.

---

# Business kontext

Banka potřebuje evidovat např.:
- klienty,
- jejich účty,
- platební karty,
- transakce.

---

# Tabulka Klienti

| Sloupec | Význam |
|---|---|
| klient_id | primární klíč |
| jmeno | jméno klienta |
| prijmeni | příjmení klienta |
| adresa | adresa klienta |
| email | kontaktní e-mail |
| telefon | telefonní číslo |

---

# Tabulka Ucty

| Sloupec | Význam |
|---|---|
| ucet_id | primární klíč |
| klient_id | foreign  klíč na tabulku Klienti |
| cislo_uctu | číslo účtu |
| typ_uctu | běžný / spořicí účet |
| datum_zalozeni | datum založení účtu |
| zustatek | aktuální zůstatek |

---

# Tabulka Karty

| Sloupec | Význam |
|---|---|
| karta_id | primární klíč |
| ucet_id | foreign klíč na tabulku Ucty |
| cislo_karty | číslo karty |
| typ_karty | debetní / kreditní karta |
| platnost_do | datum expirace |

---

# Tabulka Transakce

| Sloupec | Význam |
|---|---|
| transakce_id | primární klíč |
| ucet_id | foreign klíč na tabulku Ucty |
| datum_transakce | datum transakce |
| castka | částka transakce |
| typ_transakce | příchozí / odchozí platba |

---

# Vztahy mezi tabulkami

## Klienti → Ucty

Vztah: 1:N

Jeden klient může mít více účtů.  
Jeden účet patří jednomu klientovi.

---

## Ucty → Karty

Vztah: 1:N

Jeden účet může mít více karet.  
Jedna karta patří jednomu účtu.

---

## Ucty → Transakce

Vztah: 1:N

Jeden účet může mít mnoho transakcí.  
Jedna transakce patří jednomu účtu.

---

# Databázový mindset

Číslo účtu a číslo karty nepatří přímo do tabulky Klienti.

Důvod:
- jeden klient může mít více účtů,
- jeden účet může mít více karet,
- tím by vznikaly duplicity.

Správnější je rozdělit data do samostatných tabulek a propojit je pomocí klíčů.

---

# Klíče v databázi

## Primární klíče (PRIMARY KEYS)

### Tabulka Klienti
- klient_id

### Tabulka Ucty
- ucet_id

### Tabulka Karty
- karta_id

### Tabulka Transakce
- transakce_id

---

## Cizí klíče (FOREIGN KEYS)

### Tabulka Ucty
- klient_id → Klienti(klient_id)

### Tabulka Karty
- ucet_id → Ucty(ucet_id)

### Tabulka Transakce
- ucet_id → Ucty(ucet_id)

---

# Proč jsou klíče důležité

Primární klíče:
- jednoznačně identifikují záznam,
- zabraňují duplicitám.

Cizí klíče:
- propojují tabulky,
- zajišťují integritu dat,
- kontrolují existenci propojených záznamů.

---

# Příklad integrity dat

Transakce nemůže existovat bez účtu.

Databáze pomocí FOREIGN KEY kontroluje, že:
- účet opravdu existuje,
- transakce není propojena s neplatným účtem.

---

# Hlavní takeaway

Databázový návrh není jen o ukládání dat.

Dobrý návrh pomáhá:
- minimalizovat duplicity,
- udržet integritu dat,
- lépe propojovat data,
- jednodušeji analyzovat business procesy.
