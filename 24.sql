use ecommerce
-----------------Q24-------------------
SELECT
  p.Category,
  COUNT(oi.product_id) AS total_products_sold
FROM Product p
LEFT JOIN Orderitems oi ON p.PR_id = oi.product_id
GROUP BY p.Category
HAVING COUNT(oi.product_id) > 10
ORDER BY total_products_sold DESC;