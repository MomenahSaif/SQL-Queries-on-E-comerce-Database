use ecommerce


----------------Q22-----------------
SELECT
  p.Category,
  COUNT(p.PR_id) AS total_products,
  SUM(oi.Oi_unitprice * oi.Oi_quantity) AS total_revenue
FROM Product p
LEFT JOIN Orderitems oi ON p.PR_id = oi.product_id
GROUP BY p.Category
ORDER BY total_revenue DESC;