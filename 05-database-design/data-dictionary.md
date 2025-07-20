# Dizionario dei Dati

## Tabella: users
**Descrizione**: Contiene informazioni sui clienti registrati nel sistema

| Campo | Tipo | Null | Default | Descrizione |
|-------|------|------|---------|-------------|
| user_id | INTEGER | NO | AUTO_INCREMENT | Chiave primaria |
| username | VARCHAR(50) | NO | - | Nome utente univoco |
| email | VARCHAR(100) | NO | - | Email univoca |
| password_hash | VARCHAR(255) | NO | - | Hash della password (bcrypt) |
| first_name | VARCHAR(50) | NO | - | Nome |
| last_name | VARCHAR(50) | NO | - | Cognome |
| phone | VARCHAR(20) | YES | NULL | Numero di telefono |
| created_at | TIMESTAMP | NO | CURRENT_TIMESTAMP | Data creazione |
| updated_at | TIMESTAMP | NO | CURRENT_TIMESTAMP ON UPDATE | Data ultimo aggiornamento |
| is_active | BOOLEAN | NO | TRUE | Flag attivazione account |

**Indici**:
- PRIMARY KEY (user_id)
- UNIQUE KEY uk_username (username)
- UNIQUE KEY uk_email (email)

**Vincoli**:
- email deve seguire formato email valido
- username lunghezza minima 3 caratteri

---

## Tabella: categories
**Descrizione**: Gerarchia delle categorie prodotti

| Campo | Tipo | Null | Default | Descrizione |
|-------|------|------|---------|-------------|
| category_id | INTEGER | NO | AUTO_INCREMENT | Chiave primaria |
| name | VARCHAR(50) | NO | - | Nome categoria |
| description | TEXT | YES | NULL | Descrizione categoria |
| parent_category_id | INTEGER | YES | NULL | Riferimento categoria padre |
| created_at | TIMESTAMP | NO | CURRENT_TIMESTAMP | Data creazione |

**Indici**:
- PRIMARY KEY (category_id)
- UNIQUE KEY uk_category_name (name)
- KEY fk_parent_category (parent_category_id)

**Relazioni**:
- parent_category_id → categories(category_id)

---

## Tabella: products
**Descrizione**: Catalogo prodotti disponibili

| Campo | Tipo | Null | Default | Descrizione |
|-------|------|------|---------|-------------|
| product_id | INTEGER | NO | AUTO_INCREMENT | Chiave primaria |
| name | VARCHAR(100) | NO | - | Nome prodotto |
| description | TEXT | YES | NULL | Descrizione dettagliata |
| price | DECIMAL(10,2) | NO | - | Prezzo unitario |
| sku | VARCHAR(50) | NO | - | Codice prodotto univoco |
| stock_quantity | INTEGER | NO | 0 | Quantità in magazzino |
| category_id | INTEGER | NO | - | Categoria di appartenenza |
| created_at | TIMESTAMP | NO | CURRENT_TIMESTAMP | Data creazione |
| updated_at | TIMESTAMP | NO | CURRENT_TIMESTAMP ON UPDATE | Data ultimo aggiornamento |
| is_available | BOOLEAN | NO | TRUE | Disponibilità vendita |

**Indici**:
- PRIMARY KEY (product_id)
- UNIQUE KEY uk_sku (sku)
- KEY fk_product_category (category_id)
- KEY idx_price (price)
- KEY idx_availability (is_available)

**Relazioni**:
- category_id → categories(category_id)

**Vincoli**:
- price > 0
- stock_quantity >= 0

---

## Tabella: orders
**Descrizione**: Ordini effettuati dai clienti

| Campo | Tipo | Null | Default | Descrizione |
|-------|------|------|---------|-------------|
| order_id | INTEGER | NO | AUTO_INCREMENT | Chiave primaria |
| user_id | INTEGER | NO | - | Cliente che ha effettuato l'ordine |
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
