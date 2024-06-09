use ecommerce
------------Q6---------
SELECT C.C_id, C.C_name, COUNT(O.O_id) AS PurchaseCount
FROM Customers C
JOIN Orders O ON C.C_id = O.C_id
GROUP BY C.C_id, C.C_name
HAVING COUNT(O.O_id) > 1
