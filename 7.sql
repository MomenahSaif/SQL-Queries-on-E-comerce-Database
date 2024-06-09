use ecommerce
---------Q7--------------
SELECT P.Category AS Category, SUM(Oi.Oi_quantity * Oi.Oi_unitprice) AS TotalRevenue
FROM Product P
JOIN Orderitems Oi ON P.PR_id = Oi.product_id
GROUP BY P.Category
ORDER BY Category;

