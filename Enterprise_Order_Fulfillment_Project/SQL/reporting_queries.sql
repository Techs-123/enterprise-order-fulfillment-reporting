CREATE TABLE fact_revenue AS
SELECT
	o.order_id,
    o.order_date,
    p.amount
FROM orders o
JOIN payment p
ON o.order_id = p.order_id
WHERE p.amount > 0;





	CREATE TABLE order_fulfillment AS
SELECT
	o.order_id,
    o.order_date,
    
    DATE_ADD(o.order_date, INTERVAL 2 DAY) AS ship_date,
    DATE_ADD(o.order_date, INTERVAL 6 DAY) AS delivery_date,
    
    SUM(oi.quantity) AS total_quantity,
    
    CASE
		WHEN DATE_ADD(o.order_date, INTERVAL 7 DAY) <= '2025-02-15' THEN 'Delivered'
        WHEN DATE_ADD(o.order_date, INTERVAL 4 DAY) <= '2025-02-15' THEN 'Shipped'
        ELSE 'Pending'
	END AS order_status
    
FROM `orders` o
LEFT JOIN order_item oi
ON o.order_id = oi.order_id

GROUP BY
	o.order_id,
    o.order_date;