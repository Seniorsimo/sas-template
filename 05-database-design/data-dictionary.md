# Data Dictionary

## Table: users
**Description**: Contains information about registered customers in the system

| Field         | Type         | Null | Default           | Description                   |
|---------------|--------------|------|-------------------|-------------------------------|
| user_id       | INTEGER      | NO   | AUTO_INCREMENT    | Primary key                   |
| username      | VARCHAR(50)  | NO   | -                 | Unique username               |
| email         | VARCHAR(100) | NO   | -                 | Unique email                  |
| password_hash | VARCHAR(255) | NO   | -                 | Password hash (bcrypt)        |
| first_name    | VARCHAR(50)  | NO   | -                 | First name                    |
| last_name     | VARCHAR(50)  | NO   | -                 | Last name                     |
| phone         | VARCHAR(20)  | YES  | NULL              | Phone number                  |
| created_at    | TIMESTAMP    | NO   | CURRENT_TIMESTAMP | Creation date                 |
| updated_at    | TIMESTAMP    | NO   | CURRENT_TIMESTAMP ON UPDATE | Last update date              |
| is_active     | BOOLEAN      | NO   | TRUE              | Account activation flag       |

**Indexes**:
- PRIMARY KEY (user_id)
- UNIQUE KEY uk_username (username)
- UNIQUE KEY uk_email (email)

**Constraints**:
- email must follow a valid email format
- username must be at least 3 characters long

---

## Table: categories
**Description**: Hierarchy of product categories

| Field              | Type      | Null | Default           | Description                   |
|--------------------|-----------|------|-------------------|-------------------------------|
| category_id        | INTEGER   | NO   | AUTO_INCREMENT    | Primary key                   |
| name               | VARCHAR(50) | NO   | -                 | Category name                 |
| description        | TEXT      | YES  | NULL              | Category description          |
| parent_category_id | INTEGER   | YES  | NULL              | Reference to parent category  |
| created_at         | TIMESTAMP | NO   | CURRENT_TIMESTAMP | Creation date                 |

**Indexes**:
- PRIMARY KEY (category_id)
- UNIQUE KEY uk_category_name (name)
- KEY fk_parent_category (parent_category_id)

**Relationships**:
- parent_category_id → categories(category_id)

---

## Table: products
**Description**: Catalog of available products

| Field          | Type          | Null | Default           | Description                  |
|----------------|---------------|------|-------------------|------------------------------|
| product_id     | INTEGER       | NO   | AUTO_INCREMENT    | Primary key                  |
| name           | VARCHAR(100)  | NO   | -                 | Product name                 |
| description    | TEXT          | YES  | NULL              | Detailed description         |
| price          | DECIMAL(10,2) | NO   | -                 | Unit price                   |
| sku            | VARCHAR(50)   | NO   | -                 | Unique product code          |
| stock_quantity | INTEGER       | NO   | 0                 | Quantity in stock            |
| category_id    | INTEGER       | NO   | -                 | Category of belonging        |
| created_at     | TIMESTAMP     | NO   | CURRENT_TIMESTAMP | Creation date                |
| updated_at     | TIMESTAMP     | NO   | CURRENT_TIMESTAMP ON UPDATE | Last update date             |
| is_available   | BOOLEAN       | NO   | TRUE              | Availability for sale        |

**Indexes**:
- PRIMARY KEY (product_id)
- UNIQUE KEY uk_sku (sku)
- KEY fk_product_category (category_id)
- KEY idx_price (price)
- KEY idx_availability (is_available)

**Relationships**:
- category_id → categories(category_id)

**Constraints**:
- price > 0
- stock_quantity >= 0

---

## Table: orders
**Description**: Orders placed by customers

| Field            | Type          | Null | Default           | Description                  |
|------------------|---------------|------|-------------------|------------------------------|
| order_id         | INTEGER       | NO   | AUTO_INCREMENT    | Primary key                  |
| user_id          | INTEGER       | NO   | -                 | Customer who placed the order |
| order_date       | TIMESTAMP     | NO   | CURRENT_TIMESTAMP | Order date and time          |
| status           | ENUM          | NO   | 'PENDING'         | Current order status         |
| total_amount     | DECIMAL(10,2) | NO   | -                 | Total amount                 |
| shipping_address | TEXT          | NO   | -                 | Shipping address             |
| payment_method   | VARCHAR(50)   | NO   | -                 | Payment method               |
| created_at       | TIMESTAMP     | NO   | CURRENT_TIMESTAMP | Creation date                |
| updated_at       | TIMESTAMP     | NO   | CURRENT_TIMESTAMP ON UPDATE | Last update date             |

**ENUM values for status**:
- PENDING: Awaiting confirmation
- CONFIRMED: Confirmed
- SHIPPED: Shipped
- DELIVERED: Delivered
- CANCELLED: Cancelled

**Indexes**:
- PRIMARY KEY (order_id)
- KEY fk_order_user (user_id)
- KEY idx_order_date (order_date)
- KEY idx_status (status)

**Relationships**:
- user_id → users(user_id)

**Constraints**:
- total_amount > 0

---

## Table: order_items
**Description**: Product details for each order

| Field         | Type          | Null | Default        | Description                          |
|---------------|---------------|------|----------------|--------------------------------------|
| order_item_id | INTEGER       | NO   | AUTO_INCREMENT | Primary key                          |
| order_id      | INTEGER       | NO   | -              | Order reference                      |
| product_id    | INTEGER       | NO   | -              | Ordered product                      |
| quantity      | INTEGER       | NO   | -              | Ordered quantity                     |
| unit_price    | DECIMAL(10,2) | NO   | -              | Unit price at the time of order      |
| total_price   | DECIMAL(10,2) | NO   | -              | Total price (quantity * unit_price) |

**Indexes**:
- PRIMARY KEY (order_item_id)
- KEY fk_orderitem_order (order_id)
- KEY fk_orderitem_product (product_id)

**Relationships**:
- order_id → orders(order_id) ON DELETE CASCADE
- product_id → products(product_id)

**Constraints**:
- quantity > 0
- unit_price > 0
- total_price = quantity * unit_price

---

## Table: reviews
**Description**: Product reviews by customers

| Field      | Type      | Null | Default           | Description                 |
|------------|-----------|------|-------------------|-----------------------------|
| review_id  | INTEGER   | NO   | AUTO_INCREMENT    | Primary key                 |
| user_id    | INTEGER   | NO   | -                 | User who wrote the review   |
| product_id | INTEGER   | NO   | -                 | Reviewed product            |
| rating     | INTEGER   | NO   | -                 | Rating (1-5)                |
| comment    | TEXT      | YES  | NULL              | Text comment                |
| created_at | TIMESTAMP | NO   | CURRENT_TIMESTAMP | Creation date               |

**Indexes**:
- PRIMARY KEY (review_id)
- KEY fk_review_user (user_id)
- KEY fk_review_product (product_id)
- UNIQUE KEY uk_user_product_review (user_id, product_id)

**Relationships**:
- user_id → users(user_id)
- product_id → products(product_id)

**Constraints**:
- rating BETWEEN 1 AND 5
- A user can review a product only once

---

## Table: carts
**Description**: User shopping carts

| Field      | Type      | Null | Default           | Description          |
|------------|-----------|------|-------------------|----------------------|
| cart_id    | INTEGER   | NO   | AUTO_INCREMENT    | Primary key          |
| user_id    | INTEGER   | NO   | -                 | Owner of the cart    |
| created_at | TIMESTAMP | NO   | CURRENT_TIMESTAMP | Creation date        |
| updated_at | TIMESTAMP | NO   | CURRENT_TIMESTAMP ON UPDATE | Last update date     |

**Indexes**:
- PRIMARY KEY (cart_id)
- UNIQUE KEY uk_user_cart (user_id)

**Relationships**:
- user_id → users(user_id) ON DELETE CASCADE

---

## Table: cart_items
**Description**: Products in each user's cart

| Field        | Type      | Null | Default           | Description         |
|--------------|-----------|------|-------------------|---------------------|
| cart_item_id | INTEGER   | NO   | AUTO_INCREMENT    | Primary key         |
| cart_id      | INTEGER   | NO   | -                 | Cart reference      |
| product_id   | INTEGER   | NO   | -                 | Product in cart     |
| quantity     | INTEGER   | NO   | -                 | Quantity            |
| added_at     | TIMESTAMP | NO   | CURRENT_TIMESTAMP | Date added          |

**Indexes**:
- PRIMARY KEY (cart_item_id)
- KEY fk_cartitem_cart (cart_id)
- KEY fk_cartitem_product (product_id)
- UNIQUE KEY uk_cart_product (cart_id, product_id)

**Relationships**:
- cart_id → carts(cart_id) ON DELETE CASCADE
- product_id → products(product_id)

**Constraints**:
- quantity > 0
- A product can appear only once per cart

---

## General Notes

### Naming Conventions
- Tables: snake_case, plural
- Fields: snake_case, singular
- Primary keys: [table_name]_id
- Foreign keys: reference to the source table

### Standard Data Types
- **ID**: INTEGER AUTO_INCREMENT
- **Timestamp**: TIMESTAMP (UTC)
- **Currency**: DECIMAL(10,2)
- **Short Text**: VARCHAR(n)
- **Long Text**: TEXT
- **Booleans**: BOOLEAN (or TINYINT(1))

### Deletion Policies
- **CASCADE**: cart_items, order_items
- **RESTRICT**: Default to preserve integrity
- **SET NULL**: Where appropriate for optional references

### Backup and Maintenance
- Automated daily backups
- Indexes optimized for frequent queries
- Historical archive for old orders (>2 years)
