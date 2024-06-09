use ecommerce
--------------Q23------------------
SELECT
  p.PR_id,
  p.P_name,
  p.Category,
  oi.Oi_quantity AS order_quantity,
  oi.Oi_unitprice AS order_price,
  oi.Oi_unitprice * oi.Oi_quantity AS total_revenue
FROM Product p
LEFT JOIN Orderitems oi ON p.PR_id = oi.product_id
WHERE (p.Category = 'Electronic'
OR p.Category = 'Toy')
AND oi.Oi_quantity >= 5
AND oi.Oi_quantity <= 10
ORDER BY total_revenue DESC;
