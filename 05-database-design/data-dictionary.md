# Dizionario dei Dati - [Nome Progetto]

Questo documento fornisce una definizione dettagliata di tutte le entità del database per [Nome Progetto], specificando i campi, le relazioni, i vincoli e le regole di business associate.

## Panoramica del Modello Dati

Il modello dati di [Nome Progetto] è composto dalle seguenti entità principali:

- **[Entità 1]**: [breve descrizione]
- **[Entità 2]**: [breve descrizione]
- **[Entità 3]**: [breve descrizione]

## Definizione delle Entità

### Tabella: [nome_tabella_1]

**Descrizione**: [Descrivere lo scopo di questa tabella e il suo ruolo nel sistema]

| Campo | Tipo | Null | Default | Descrizione |
|-------|------|------|---------|-------------|
| [campo_1] | [TIPO] | [SI/NO] | [valore] | [descrizione dettagliata] |
| [campo_2] | [TIPO] | [SI/NO] | [valore] | [descrizione dettagliata] |
| [campo_3] | [TIPO] | [SI/NO] | [valore] | [descrizione dettagliata] |

**Indici**:

- PRIMARY KEY ([campo_1])
- UNIQUE KEY [nome_indice] ([campo_2])
- KEY [nome_indice] ([campo_3])

**Relazioni**:

- [campo_riferimento] → [tabella_riferita]([campo_riferito])

**Vincoli**:

- [Descrizione vincolo 1]
- [Descrizione vincolo 2]

**Requisiti correlati**:

- [REQ-XXX]: [Breve descrizione]

---

### Tabella: [nome_tabella_2]

**Descrizione**: [Descrivere lo scopo di questa tabella e il suo ruolo nel sistema]

| Campo | Tipo | Null | Default | Descrizione |
|-------|------|------|---------|-------------|
| [campo_1] | [TIPO] | [SI/NO] | [valore] | [descrizione dettagliata] |
| [campo_2] | [TIPO] | [SI/NO] | [valore] | [descrizione dettagliata] |
| [campo_3] | [TIPO] | [SI/NO] | [valore] | [descrizione dettagliata] |

**Indici**:

- PRIMARY KEY ([campo_1])
- UNIQUE KEY [nome_indice] ([campo_2])
- KEY [nome_indice] ([campo_3])

**Relazioni**:

- [campo_riferimento] → [tabella_riferita]([campo_riferito])

**Vincoli**:

- [Descrizione vincolo 1]
- [Descrizione vincolo 2]

**Requisiti correlati**:

- [REQ-XXX]: [Breve descrizione]

---

## Esempi di Implementazione

### [Esempio: E-commerce]

#### Tabella: users

**Descrizione**: Contiene informazioni sui clienti registrati nel sistema

| Campo | Tipo | Null | Default | Descrizione |
|-------|------|------|---------|-------------|
| user_id | INTEGER | NO | AUTO_INCREMENT | Chiave primaria |
| username | VARCHAR(50) | NO | - | Nome utente univoco |
| email | VARCHAR(100) | NO | - | Email univoca |
| password_hash | VARCHAR(255) | NO | - | Hash della password |
| first_name | VARCHAR(50) | NO | - | Nome |
| last_name | VARCHAR(50) | NO | - | Cognome |
| created_at | TIMESTAMP | NO | CURRENT_TIMESTAMP | Data creazione |
| is_active | BOOLEAN | NO | TRUE | Flag attivazione |

#### Tabella: products

**Descrizione**: Catalogo prodotti disponibili

| Campo | Tipo | Null | Default | Descrizione |
|-------|------|------|---------|-------------|
| product_id | INTEGER | NO | AUTO_INCREMENT | Chiave primaria |
| name | VARCHAR(100) | NO | - | Nome prodotto |
| price | DECIMAL(10,2) | NO | - | Prezzo unitario |
| category_id | INTEGER | NO | - | Categoria |
| stock_quantity | INTEGER | NO | 0 | Quantità in magazzino |

### [Esempio: Banking]

#### Tabella: transactions

**Descrizione**: Movimenti sui conti

| Campo | Tipo | Null | Default | Descrizione |
|-------|------|------|---------|-------------|
| transaction_id | INTEGER | NO | AUTO_INCREMENT | Chiave primaria |
| account_id | INTEGER | NO | - | Conto di riferimento |
| amount | DECIMAL(15,2) | NO | - | Importo operazione |
| transaction_type | VARCHAR(20) | NO | - | Tipo operazione |
| transaction_date | TIMESTAMP | NO | CURRENT_TIMESTAMP | Data operazione |

### [Esempio: Healthcare]

#### Tabella: patients

**Descrizione**: Anagrafica pazienti

| Campo | Tipo | Null | Default | Descrizione |
|-------|------|------|---------|-------------|
| patient_id | INTEGER | NO | AUTO_INCREMENT | Chiave primaria |
| first_name | VARCHAR(50) | NO | - | Nome |
| last_name | VARCHAR(50) | NO | - | Cognome |
| date_of_birth | DATE | NO | - | Data di nascita |
| gender | VARCHAR(10) | YES | NULL | Genere |
| medical_record_number | VARCHAR(20) | NO | - | Numero cartella clinica |

#### Tabella: appointments

**Descrizione**: Appuntamenti medici

| Campo | Tipo | Null | Default | Descrizione |
|-------|------|------|---------|-------------|
| appointment_id | INTEGER | NO | AUTO_INCREMENT | Chiave primaria |
| patient_id | INTEGER | NO | - | Paziente |
| practitioner_id | INTEGER | NO | - | Medico |
| appointment_date | DATETIME | NO | - | Data e ora |
| status | VARCHAR(20) | NO | 'SCHEDULED' | Stato appuntamento |
| notes | TEXT | YES | NULL | Note cliniche |

## Glossario dei Termini

- **[Termine 1]**: [Definizione]
- **[Termine 2]**: [Definizione]
- **[Termine 3]**: [Definizione]

## Regole di Business

- [RB-1]: [Descrizione regola di business]
- [RB-2]: [Descrizione regola di business]
- [RB-3]: [Descrizione regola di business]
| order_date | TIMESTAMP | NO | CURRENT_TIMESTAMP | Data e ora ordine |
| status | ENUM | NO | 'PENDING' | Stato corrente ordine |
| total_amount | DECIMAL(10,2) | NO | - | Importo totale |
| shipping_address | TEXT | NO | - | Indirizzo di spedizione |
| payment_method | VARCHAR(50) | NO | - | Metodo di pagamento |
| created_at | TIMESTAMP | NO | CURRENT_TIMESTAMP | Data creazione |
| updated_at | TIMESTAMP | NO | CURRENT_TIMESTAMP ON UPDATE | Data ultimo aggiornamento |

**Valori ENUM per status**:

- PENDING: In attesa di conferma
- CONFIRMED: Confermato
- SHIPPED: Spedito
- DELIVERED: Consegnato
- CANCELLED: Annullato

**Indici**:

- PRIMARY KEY (order_id)
- KEY fk_order_user (user_id)
- KEY idx_order_date (order_date)
- KEY idx_status (status)

**Relazioni**:

- user_id → users(user_id)

**Vincoli**:

- total_amount > 0

---

## Tabella: order_items

**Descrizione**: Dettaglio prodotti per ciascun ordine

| Campo | Tipo | Null | Default | Descrizione |
|-------|------|------|---------|-------------|
| order_item_id | INTEGER | NO | AUTO_INCREMENT | Chiave primaria |
| order_id | INTEGER | NO | - | Riferimento ordine |
| product_id | INTEGER | NO | - | Prodotto ordinato |
| quantity | INTEGER | NO | - | Quantità ordinata |
| unit_price | DECIMAL(10,2) | NO | - | Prezzo unitario al momento dell'ordine |
| total_price | DECIMAL(10,2) | NO | - | Prezzo totale (quantity * unit_price) |

**Indici**:

- PRIMARY KEY (order_item_id)
- KEY fk_orderitem_order (order_id)
- KEY fk_orderitem_product (product_id)

**Relazioni**:

- order_id → orders(order_id) ON DELETE CASCADE
- product_id → products(product_id)

**Vincoli**:

- quantity > 0
- unit_price > 0
- total_price = quantity * unit_price

---

## Tabella: reviews

**Descrizione**: Recensioni prodotti da parte dei clienti

| Campo | Tipo | Null | Default | Descrizione |
|-------|------|------|---------|-------------|
| review_id | INTEGER | NO | AUTO_INCREMENT | Chiave primaria |
| user_id | INTEGER | NO | - | Utente che ha scritto la recensione |
| product_id | INTEGER | NO | - | Prodotto recensito |
| rating | INTEGER | NO | - | Valutazione (1-5) |
| comment | TEXT | YES | NULL | Commento testuale |
| created_at | TIMESTAMP | NO | CURRENT_TIMESTAMP | Data creazione |

**Indici**:

- PRIMARY KEY (review_id)
- KEY fk_review_user (user_id)
- KEY fk_review_product (product_id)
- UNIQUE KEY uk_user_product_review (user_id, product_id)

**Relazioni**:

- user_id → users(user_id)
- product_id → products(product_id)

**Vincoli**:

- rating BETWEEN 1 AND 5
- Un utente può recensire un prodotto una sola volta

---

## Tabella: carts

**Descrizione**: Carrelli della spesa degli utenti

| Campo | Tipo | Null | Default | Descrizione |
|-------|------|------|---------|-------------|
| cart_id | INTEGER | NO | AUTO_INCREMENT | Chiave primaria |
| user_id | INTEGER | NO | - | Proprietario del carrello |
| created_at | TIMESTAMP | NO | CURRENT_TIMESTAMP | Data creazione |
| updated_at | TIMESTAMP | NO | CURRENT_TIMESTAMP ON UPDATE | Data ultimo aggiornamento |

**Indici**:

- PRIMARY KEY (cart_id)
- UNIQUE KEY uk_user_cart (user_id)

**Relazioni**:

- user_id → users(user_id) ON DELETE CASCADE

---

## Tabella: cart_items

**Descrizione**: Prodotti nel carrello di ciascun utente

| Campo | Tipo | Null | Default | Descrizione |
|-------|------|------|---------|-------------|
| cart_item_id | INTEGER | NO | AUTO_INCREMENT | Chiave primaria |
| cart_id | INTEGER | NO | - | Riferimento carrello |
| product_id | INTEGER | NO | - | Prodotto nel carrello |
| quantity | INTEGER | NO | - | Quantità |
| added_at | TIMESTAMP | NO | CURRENT_TIMESTAMP | Data aggiunta |

**Indici**:

- PRIMARY KEY (cart_item_id)
- KEY fk_cartitem_cart (cart_id)
- KEY fk_cartitem_product (product_id)
- UNIQUE KEY uk_cart_product (cart_id, product_id)

**Relazioni**:

- cart_id → carts(cart_id) ON DELETE CASCADE
- product_id → products(product_id)

**Vincoli**:

- quantity > 0
- Un prodotto può apparire una sola volta per carrello

---

## Note Generali

### Convenzioni di Naming

- Tabelle: snake_case, plurale
- Campi: snake_case, singolare
- Chiavi primarie: [table_name]_id
- Chiavi esterne: riferimento alla tabella di origine

### Tipi di Dati Standard

- **ID**: INTEGER AUTO_INCREMENT
- **Timestamp**: TIMESTAMP (UTC)
- **Moneta**: DECIMAL(10,2)
- **Testo breve**: VARCHAR(n)
- **Testo lungo**: TEXT
- **Booleani**: BOOLEAN (o TINYINT(1))

### Politiche di Cancellazione

- **CASCADE**: cart_items, order_items
- **RESTRICT**: Predefinita per preservare integrità
- **SET NULL**: Dove appropriato per riferimenti opzionali

### Backup e Maintenance

- Backup giornalieri automatizzati
- Indici ottimizzati per query frequenti
- Archivio storico per ordini vecchi (>2 anni)
