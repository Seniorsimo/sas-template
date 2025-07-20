# Esempio di Diagramma con Mermaid

Questo file mostra come utilizzare la sintassi Mermaid per creare diagrammi rapidi direttamente nei file Markdown.

## Diagramma di Flusso del Processo di Ordine

```mermaid
graph TD
    A[Utente visita sito] --> B{Utente loggato?}
    B -->|No| C[Pagina Login/Registrazione]
    B -->|Sì| D[Naviga catalogo]
    C --> D
    D --> E[Seleziona prodotto]
    E --> F[Aggiungi al carrello]
    F --> G{Continue shopping?}
    G -->|Sì| D
    G -->|No| H[Vai al checkout]
    H --> I[Inserisci dati spedizione]
    I --> J[Seleziona metodo pagamento]
    J --> K[Conferma ordine]
    K --> L{Pagamento ok?}
    L -->|Sì| M[Ordine confermato]
    L -->|No| N[Errore pagamento]
    N --> J
    M --> O[Invio email conferma]
    O --> P[Fine processo]
```

## Diagramma di Stato dell'Ordine

```mermaid
stateDiagram-v2
    [*] --> Pending
    Pending --> Confirmed : payment_success
    Pending --> Cancelled : payment_failed
    Confirmed --> Shipped : start_shipping
    Shipped --> Delivered : confirm_delivery
    Confirmed --> Cancelled : user_cancellation
    Shipped --> Cancelled : shipping_failed
    Delivered --> [*]
    Cancelled --> [*]
    
    note right of Confirmed
        Ordine pagato e confermato
        Pronto per spedizione
    end note
    
    note right of Shipped
        Ordine in transito
        Tracking disponibile
    end note
```

## Diagramma di Sequenza Semplificato

```mermaid
sequenceDiagram
    participant U as Utente
    participant F as Frontend
    participant A as API Gateway
    participant S as Order Service
    participant D as Database
    participant P as Payment Service
    
    U->>F: Clicca "Conferma Ordine"
    F->>A: POST /api/orders
    A->>S: createOrder()
    S->>D: Salva ordine (status: PENDING)
    D-->>S: orderId
    S->>P: processPayment()
    alt Pagamento riuscito
        P-->>S: success
        S->>D: Aggiorna status (CONFIRMED)
        S-->>A: orderId, status
        A-->>F: 200 OK
        F-->>U: Mostra conferma
    else Pagamento fallito
        P-->>S: error
        S->>D: Aggiorna status (CANCELLED)
        S-->>A: error
        A-->>F: 400 Bad Request
        F-->>U: Mostra errore
    end
```

## Entity Relationship Diagram

```mermaid
erDiagram
    USER {
        int user_id PK
        string username UK
        string email UK
        string password_hash
        datetime created_at
    }
    
    PRODUCT {
        int product_id PK
        string name
        decimal price
        int stock_quantity
        int category_id FK
    }
    
    CATEGORY {
        int category_id PK
        string name UK
        string description
    }
    
    ORDER {
        int order_id PK
        int user_id FK
        datetime order_date
        string status
        decimal total_amount
    }
    
    ORDER_ITEM {
        int order_item_id PK
        int order_id FK
        int product_id FK
        int quantity
        decimal unit_price
    }
    
    USER ||--o{ ORDER : "places"
    ORDER ||--o{ ORDER_ITEM : "contains"
    ORDER_ITEM }o--|| PRODUCT : "references"
    PRODUCT }o--|| CATEGORY : "belongs to"
```

## Vantaggi di Mermaid

### 🚀 Velocità
- Sintassi semplice e intuitiva
- Rendering automatico nei Markdown
- Modifiche rapide al codice

### 📝 Integrazione
- Perfetto per documentazione in README
- Versionabile con Git
- Compatibile con GitHub, GitLab, etc.

### 🎨 Versatilità
- Flowchart, sequence, state diagrams
- ER diagrams per database
- Gantt charts per timeline

## Quando Usare Mermaid vs PlantUML

### Usa Mermaid per:
- Diagrammi semplici e veloci
- Documentazione embedded nei Markdown
- Flowchart e diagrammi di processo
- Quando la semplicità è prioritaria

### Usa PlantUML per:
- Diagrammi UML formali e complessi
- Documentazione tecnica dettagliata
- Quando serve precision semantica UML
- Diagrammi che richiedono personalizzazione avanzata

## Come Visualizzare

### 📋 File Markdown con Mermaid (come questo)
1. **Anteprima side-by-side**: `Ctrl+K V`
2. **Anteprima nuova tab**: `Ctrl+Shift+V`
3. **I diagrammi si renderizzano automaticamente**

### 📄 File .mmd standalone
1. **Con Mermaid Preview Extension** (installata):
   - Apri il file `.mmd`
   - `Ctrl+Shift+P` → `Mermaid: Preview`
   - Oppure clicca l'icona preview nell'editor

2. **Wrapping temporaneo in Markdown**:
   - Crea un file `.md` temporaneo
   - Incolla il contenuto dentro:
     ```markdown
     ```mermaid
     [tuo codice mermaid]
     ```
   - Usa `Ctrl+K V` per l'anteprima

### 🌐 Online
- **Mermaid Live**: [mermaid.live](https://mermaid.live)
- Copia/incolla il codice per visualizzazione + export PNG/SVG

### 💡 Tip
Per testare subito, apri `templates/flowchart-template.mmd` e usa `Ctrl+Shift+P` → `Mermaid: Preview`

---
*I diagrammi Mermaid sopra sono esempi che puoi copiare e personalizzare per il tuo progetto*
