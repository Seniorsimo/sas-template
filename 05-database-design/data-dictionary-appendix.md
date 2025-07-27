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
