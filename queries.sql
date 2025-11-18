SELECT * FROM orders;

SELECT * FROM orders
WHERE YEAR(order_date) = 2025 AND MONTH(order_date) = 3;

SELECT * FROM orders ORDER BY total_amount DESC LIMIT 5;

SELECT DATE_FORMAT(order_date,'%Y-%m') AS month,
       SUM(total_amount) AS sales
FROM orders
GROUP BY month;

SELECT p.product_name,
       SUM(oi.quantity) AS total_qty
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_qty DESC;

SELECT c.category_name,
       SUM(oi.quantity * oi.unit_price) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name;

SELECT c.first_name, c.last_name,
       COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT(o.order_id) > 1;

SELECT MAX(total_amount)
FROM orders
WHERE total_amount < (SELECT MAX(total_amount) FROM orders);