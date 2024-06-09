use ecommerce
--------------Q25-----------------
SELECT
  c.C_id,
  COUNT(o.O_id) AS total_orders
FROM Customers c
LEFT JOIN orders o ON c.C_id = o.c_id
GROUP BY c.C_id
HAVING COUNT(o.O_id) > 5
ORDER BY total_orders DESC;
