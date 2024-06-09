use ecommerce
------------Q10-----------
SELECT C.C_id, C.C_name, COUNT(O.O_id) AS total_orders
FROM Customers C
LEFT JOIN Orders O ON C.C_id = O.C_id
GROUP BY C.C_id, C.C_name
HAVING COUNT(O.O_id) > 5
