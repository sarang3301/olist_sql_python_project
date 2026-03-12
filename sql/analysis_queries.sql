-- Total Orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Most used payment method
SELECT payment_type, COUNT(*) AS total
FROM order_payments
GROUP BY payment_type
ORDER BY total DESC;

-- Top 10 products sold
SELECT product_id, COUNT(*) AS total_sales
FROM order_items
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 10;