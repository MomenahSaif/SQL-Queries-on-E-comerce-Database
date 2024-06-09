use ecommerce
------------Q15-----------
SELECT S.S_id, S.S_name, COUNT(OD.product_id) AS TotalProductsSold
FROM Sellers S
LEFT JOIN Product P ON S.S_id = P.s_id
LEFT JOIN Orderitems OD ON P.PR_id = OD.product_id
GROUP BY S.S_id, S.S_name
ORDER BY TotalProductsSold DESC;
