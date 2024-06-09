use ecommerce
-------------Q13--------
SELECT DISTINCT C.C_id, C.C_name
FROM Customers C
JOIN Orders O ON C.C_id = O.C_id
WHERE O.O_creationtimestamp >= DATEADD(day, -30, GETDATE());