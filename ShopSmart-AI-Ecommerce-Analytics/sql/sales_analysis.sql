
-- =========================================
-- ShopSmart AI - Sales Analysis
-- =========================================

-- 1. View sample orders
SELECT *
FROM orders
LIMIT 10;


-- 2. Total number of orders
SELECT COUNT(*) AS total_orders
FROM orders;


-- 3. Total items sold
SELECT SUM(quantity) AS total_items_sold
FROM orders;


-- 4. Top customers by number of orders
SELECT
    customer_id,
    COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 10;


-- 5. Orders with product information
SELECT
    o.order_id,
    o.customer_id,
    o.product_id,
    p.product_name,
    p.category,
    p.price,
    o.quantity,
    o.discount_percent
FROM orders AS o
JOIN products AS p
    ON o.product_id = p.product_id
LIMIT 10;


-- 6. Total revenue
SELECT
    SUM(
        quantity * price *
        (1 - discount_percent / 100.0)
    ) AS total_revenue
FROM orders AS o
JOIN products AS p
    ON o.product_id = p.product_id;


-- 7. Revenue by category
SELECT
    p.category,
    SUM(
        o.quantity * p.price *
        (1 - o.discount_percent / 100.0)
    ) AS revenue
FROM orders AS o
JOIN products AS p
    ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;


-- 8. Top 10 products by revenue
SELECT
    p.product_name,
    p.category,
    SUM(
        o.quantity * p.price *
        (1 - o.discount_percent / 100.0)
    ) AS revenue
FROM orders AS o
JOIN products AS p
    ON o.product_id = p.product_id
GROUP BY p.product_id, p.product_name, p.category
ORDER BY revenue DESC
LIMIT 10;