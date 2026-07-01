select database();

SELECT COUNT(*) FROM staging_orders;

SELECT * FROM staging_customer;


SELECT o.*
FROM staging_orders o
LEFT JOIN staging_customer c
ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;


SELECT *
FROM staging_payment
WHERE amount <= 0;






SELECT
	p.pay_id,
    p.order_id,
    p.amount,
CASE
	WHEN o.order_id IS NULL
		AND p.order_id = 1013 THEN 'Order dropped due to missing order_date'
    WHEN o.order_id IS NULL THEN 'Invalid order reference'
    WHEN p.amount <= 0 THEN 'Invalid payment amount'
    ELSE 'Valid'
    END AS root_cause
FROM staging_payment p
JOIN staging_orders o
ON p.order_id = o.order_id;
