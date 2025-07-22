# AC-NF-PERF-001: Verifica Tempo di Risposta API

## 📋 Informazioni Generali
**ID**: AC-NF-PERF-001
**Categoria**: Performance
**Requisito Collegato**: REQ-NF-PERF-001
**Quality Attribute**: Tempo di Risposta
**Priorità**: High
**Status**: Approved
**Assigned to**: Performance Team

---

## 📝 Descrizione

### Sommario
Questo criterio verifica che i tempi di risposta delle API principali rimangano entro le soglie definite sotto un carico di lavoro realistico.

---

## 📊 Metriche e Target

### Metrica Primaria
**Nome Metrica**: 95th Percentile Response Time
**Unità di Misura**: Millisecondi (ms)
**Valore Target**: <= 500ms
**Valore Minimo Accettabile**: <= 1000ms

---

## ⚙️ Condizioni di Misurazione

### Ambiente di Test
**Environment**: Staging (con specifiche hardware simili alla produzione)
**Load Conditions**: 50 utenti concorrenti che eseguono un mix di operazioni di lettura e scrittura per 15 minuti.

---

## 🧪 Scenari di Test

### Scenario 1: Carico Normale
**Given** il sistema è sotto un carico simulato di 50 utenti concorrenti
**When** vengono eseguite richieste continue agli endpoint `GET /api/bookings` e `POST /api/bookings`
**Then** il 95° percentile del tempo di risposta per entrambi gli endpoint deve essere inferiore a 500ms.

---

## 🔧 Strumenti e Metodologie

### Testing Tools
**Primary Tool**: k6 (o JMeter)
**Monitoring Tools**: Prometheus, Grafana

---

## 🔗 Tracciabilità

### Technical Requirements
**Non-Functional Req**: REQ-NF-PERF-001 - Tempo di Risposta dell'API

---

## ✅ Sign-off

### Approvals
| Ruolo | Nome | Data | Firma | Comments |
|---|---|---|---|---|
| Performance Engineer | [Nome] | 22/07/2024 | (Approved) | |
| Product Owner | [Nome Product Owner] | 22/07/2024 | (Approved) | |
