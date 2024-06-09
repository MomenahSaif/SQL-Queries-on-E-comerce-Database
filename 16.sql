use ecommerce
------------Q16------------
SELECT TOP 5 P.PR_id, P.P_name, SUM(OD.Oi_quantity) AS TotalSales
FROM Product P
JOIN Orderitems OD ON P.PR_id = OD.product_id
JOIN Orders O ON OD.o_id = O.O_id
WHERE O.O_creationtimestamp >= DATEADD(MONTH, -1, GETDATE()) -- Filter for the last month
GROUP BY P.PR_id, P.P_name
ORDER BY TotalSales DESC;