-- =========================================
-- TABLE: customers
-- =========================================

CREATE TABLE customers (
    customer_id INT,
    name VARCHAR(100),
    region VARCHAR(50),
    email VARCHAR(100),
    age INT,
    registration_date DATE,
    suspicious_flag VARCHAR(10),
    email_status VARCHAR(20),
    age_status VARCHAR(30)
);

INSERT INTO customers VALUES
(1001, 'Jan Novak', 'Praha', 'jan@email.cz', 34, '2025-01-05', 'NO', 'valid', 'valid'),
(1002, 'Jana Svobodova', 'Brno', 'jana@email.cz', 29, '2025-01-05', 'NO', 'valid', 'valid'),
(1003, 'Petr Sedlacek', 'Praha', NULL, 200, '2025-01-07', 'YES', 'missing', 'suspicious'),
(1004, 'Eva Mala', 'Ostrava', 'eva@email.cz', NULL, '2025-01-07', 'NO', 'valid', 'invalid_or_missing'),
(1006, 'Tomas Black', 'Bratislava', 'tom@email.com', 41, '2025-01-08', 'NO', 'valid', 'valid'),
(1007, 'Marie Kralova', 'Plzeň', NULL, 31, '2025-01-08', 'NO', 'missing', 'valid');


-- =========================================
-- TABLE: sales
-- =========================================

CREATE TABLE sales (
    order_id INT,
    customer_id INT,
    product VARCHAR(50),
    revenue INT,
    cost INT,
    region VARCHAR(50),
    margin INT,
    margin_pct DECIMAL(10,2),
    suspicious_order VARCHAR(10)
);

INSERT INTO sales VALUES
(5001, 1001, 'Smartwatch', 8990, 5000, 'Praha', 3990, 0.44, 'NO'),
(5002, 1002, 'Headphones', 2990, 1800, 'Brno', 1190, 0.40, 'NO'),
(5003, 1003, 'TV', 49990, 41000, 'Praha', 8990, 0.18, 'NO'),
(5004, 1004, 'Smartwatch', 8990, 5000, 'Ostrava', 3990, 0.44, 'NO'),
(5005, 1005, 'Smartwatch', 8990, 5000, 'Praha', 3990, 0.44, 'NO'),
(5006, 1006, 'Notebook', 125000, 70000, 'Bratislava', 55000, 0.44, 'YES'),
(5007, 1007, 'Headphones', 2990, 1800, 'Plzeň', 1190, 0.40, 'NO');

---

SELECT
    product,
    COUNT(*) AS total_orders,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY
    product
ORDER BY total_revenue DESC;

|------------|--------------|---------------|
| product    | total_orders | total_revenue |
|------------|--------------|---------------|
| Notebook   | 1            | 125000        |
| TV         | 1            | 49990         |
| Smartwatch | 3            | 26970         |
| Headphones | 2            | 5980          |

---

SELECT
    product,
    COUNT(*) AS total_orders,
    SUM(revenue - cost) AS total_margin
FROM sales
GROUP BY
    product
ORDER BY total_margin DESC;

|------------|--------------|--------------|
| product    | total_orders | total_margin |
|------------|--------------|--------------|
| Notebook   | 1            | 55000        |
| Smartwatch | 3            | 11970        |
| TV         | 1            | 8990         |
| Headphones | 2            | 2380         |

---

SELECT
    order_id,
    product,
    revenue,
    CASE
         WHEN revenue > 100000 THEN 'high_risk'
        WHEN revenue > 50000 THEN 'medium_risk'
        ELSE 'standard'
    END AS order_status
FROM sales;

|----------|------------|---------|--------------|
| order_id | product    | revenue | order_status |
|----------|------------|---------|--------------|
| 5001     | Smartwatch | 8990    | standard     |
| 5002     | Headphones | 2990    | standard     |
| 5003     | TV         | 49990   | standard     |
| 5004     | Smartwatch | 8990    | standard     |
| 5005     | Smartwatch | 8990    | standard     |
| 5006     | Notebook   | 125000  | high_risk    |
| 5007     | Headphones | 2990    | standard     |

---

SELECT
    customer_id,
    name,
    email,
    age
FROM customers
WHERE email IS NULL OR age IS NULL OR age > 100;

|-------------|---------------|--------------|--------|
| customer_id | name          | email        | age    |
|-------------|---------------|--------------|--------|
| 1003        | Petr Sedlacek | [null]       | 200    |
| 1004        | Eva Mala      | eva@email.cz | [null] |
| 1007        | Marie Kralova | [null]       | 31     |

---

SELECT
    s.order_id,
    s.product,
    s.revenue,
    c.name,
    c.region,
    c.email
FROM customers c
LEFT JOIN sales s
    ON c.customer_id = s.customer_id;

|----------|------------|---------|----------------|------------|---------------|
| order_id | product    | revenue | name           | region     | email         |
|----------|------------|---------|----------------|------------|---------------|
| 5001     | Smartwatch | 8990    | Jan Novak      | Praha      | jan@email.cz  |
| 5002     | Headphones | 2990    | Jana Svobodova | Brno       | jana@email.cz |
| 5003     | TV         | 49990   | Petr Sedlacek  | Praha      | [null]        |
| 5004     | Smartwatch | 8990    | Eva Mala       | Ostrava    | eva@email.cz  |
| 5006     | Notebook   | 125000  | Tomas Black    | Bratislava | tom@email.com |
| 5007     | Headphones | 2990    | Marie Kralova  | Plzen      | [null]        |

---

SELECT
    order_id,
    customer_id,
    product,
    revenue
FROM sales
WHERE customer_id IN (
    SELECT customer_id
    FROM customers
    WHERE email IS NULL
       OR age > 100
       OR age IS NULL
);

|----------|-------------|------------|---------|
| order_id | customer_id | product    | revenue |
|----------|-------------|------------|---------|
| 5003     | 1003        | TV         | 49990   |
| 5004     | 1004        | Smartwatch | 8990    |
| 5007     | 1007        | Headphones | 2990    |

---

SELECT
    product,
    SUM(revenue) AS total_revenue,
    COUNT(*) AS order_count
FROM sales
GROUP BY product
HAVING SUM(revenue) > 50000
ORDER BY total_revenue DESC;

|----------|---------------|-------------|
| product  | total_revenue | order_count |
|----------|---------------|-------------|
| Notebook | 125000        | 1           |

---

SELECT
    order_id,
    customer_id,
    product,
    revenue
FROM sales s
WHERE EXISTS (
    SELECT *
    FROM customers c
    WHERE s.customer_id = c.customer_id
        AND (email IS NULL
            OR age > 100
            OR age IS NULL)
);

|----------|-------------|------------|---------|
| order_id | customer_id | product    | revenue |
|----------|-------------|------------|---------|
| 5003     | 1003        | TV         | 49990   |
| 5004     | 1004        | Smartwatch | 8990    |
| 5007     | 1007        | Headphones | 2990    |

---

WITH product_revenue AS (
    SELECT
        product,
        SUM(revenue) AS total_revenue
    FROM sales
    GROUP BY product
),
product_rank AS (
    SELECT
        product,
        total_revenue,
        ROW_NUMBER() OVER (
            ORDER BY total_revenue DESC
        ) AS revenue_rank
    FROM product_revenue
)

SELECT
    product,
    total_revenue,
    revenue_rank
FROM product_rank
WHERE revenue_rank = 1;

|----------|---------------|--------------|
| product  | total_revenue | revenue_rank |
|----------|---------------|--------------|
| Notebook | 125000        | 1            |
