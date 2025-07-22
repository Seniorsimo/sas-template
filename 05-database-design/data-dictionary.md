# Dizionario dei Dati

## Tabella: users
**Descrizione**: Contiene informazioni sui dipendenti che utilizzano il sistema.

| Campo | Tipo | Null | Default | Descrizione |
|---|---|---|---|---|
| user_id | UUID | NO | - | Chiave primaria, fornita da Keycloak |
| name | VARCHAR(100) | NO | - | Nome completo dell'utente |
| email | VARCHAR(100) | NO | - | Email aziendale univoca |

**Indici**:
- PRIMARY KEY (user_id)
- UNIQUE KEY uk_email (email)

---

## Tabella: rooms
**Descrizione**: Contiene informazioni sulle sale riunioni disponibili.

| Campo | Tipo | Null | Default | Descrizione |
|---|---|---|---|---|
| room_id | UUID | NO | gen_random_uuid() | Chiave primaria |
| name | VARCHAR(100) | NO | - | Nome della sala (es. "Sala Blu") |
| capacity | INTEGER | NO | - | Numero massimo di persone che la sala può ospitare |

**Indici**:
- PRIMARY KEY (room_id)
- UNIQUE KEY uk_room_name (name)

---

## Tabella: bookings
**Descrizione**: Contiene le informazioni sulle prenotazioni effettuate.

| Campo | Tipo | Null | Default | Descrizione |
|---|---|---|---|---|
| booking_id | UUID | NO | gen_random_uuid() | Chiave primaria |
| start_time | TIMESTAMP | NO | - | Data e ora di inizio della prenotazione |
| end_time | TIMESTAMP | NO | - | Data e ora di fine della prenotazione |
| user_id | UUID | NO | - | Riferimento all'utente che ha effettuato la prenotazione |
| room_id | UUID | NO | - | Riferimento alla sala prenotata |

**Indici**:
- PRIMARY KEY (booking_id)
- KEY fk_booking_user (user_id)
- KEY fk_booking_room (room_id)
- UNIQUE KEY uk_room_time (room_id, start_time)

**Relazioni**:
- user_id → users(user_id)
- room_id → rooms(room_id)

**Vincoli**:
- end_time > start_time
- Le prenotazioni non possono sovrapporsi per la stessa sala (garantito da `uk_room_time` e logica applicativa).

---

## Note Generali

### Convenzioni di Naming
- Tabelle: snake_case, plurale
- Campi: snake_case, singolare
- Chiavi primarie: [table_name]_id
- Chiavi esterne: riferimento alla tabella di origine

### Tipi di Dati Standard
- **ID**: UUID
- **Timestamp**: TIMESTAMP (UTC)
- **Testo**: VARCHAR(n)

### Politiche di Cancellazione
- **RESTRICT**: Predefinita per preservare l'integrità dei dati storici. Le cancellazioni vengono gestite a livello applicativo.
