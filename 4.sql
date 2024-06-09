use ecommerce
----Q4-------
SELECT TOP 5 C.C_name, SUM(O.O_totalamount) AS TotalSpent
FROM Customers C
JOIN Orders O ON C.C_id = O.C_id
GROUP BY C.C_name
ORDER BY TotalSpent DESC;
