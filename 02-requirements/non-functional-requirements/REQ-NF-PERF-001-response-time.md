# REQ-NF-PERF-001: Tempo di Risposta dell'API

## 📋 Informazioni Generali
**ID**: REQ-NF-PERF-001
**Categoria**: Performance
**Sottocategoria**: Tempo di Risposta
**Priorità**: High
**Status**: Approved
**Owner**: Product Owner

---

## 📝 Descrizione

### Sommario
Le API del sistema devono rispondere alle richieste dei client entro un tempo accettabile per garantire un'esperienza utente fluida.

### Descrizione Dettagliata
Il tempo di risposta, misurato come il tempo che intercorre tra la ricezione di una richiesta HTTP da parte del server e l'invio della risposta, è un fattore critico per l'usabilità dell'applicazione. Tempi di risposta lenti possono causare frustrazione e una percezione di scarsa qualità del servizio.

### Motivazione Business
Un'applicazione reattiva migliora la produttività e la soddisfazione dei dipendenti.

---

## 📊 Specifiche Quantitative

### Metrica Primaria
**Nome Metrica**: P95 Response Time
**Unità di Misura**: Millisecondi (ms)
**Valore Target**: < 500 ms
**Valore Minimo Accettabile**: < 1000 ms
**Valore Ottimale**: < 300 ms

### Condizioni di Misurazione
**Ambiente**: Produzione
**Carico**: Carico medio di 50 utenti concorrenti.

---

## ✅ Criteri di Accettazione

### Criterio Principale
**Given** il sistema operante in condizioni di carico normale
**When** vengono effettuate 1000 richieste alle API principali (es. GET /api/bookings)
**Then** il 95° percentile del tempo di risposta deve essere inferiore a 500ms.

---

## 🧪 Piano di Verifica

### Metodi di Testing
**Tipo di Test**: Load Testing
**Tools di Test**: JMeter, k6, o simili.
**Frequenza**: Prima di ogni rilascio in produzione.

---

## 🔗 Tracciabilità

### Requisiti Funzionali
- **REQ-F-002**: Visualizzazione Prenotazioni
- **REQ-F-003**: Creazione Prenotazione
- **REQ-F-004**: Cancellazione Prenotazione

---

## ✅ Sign-off

### Approvazioni
| Ruolo | Nome | Data | Firma |
|---|---|---|---|
| Technical Lead | [Nome Team Leader] | 22/07/2024 | (Approved) |
| Product Owner | [Nome Product Owner] | 22/07/2024 | (Approved) |
