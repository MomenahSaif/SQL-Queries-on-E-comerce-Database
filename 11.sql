use ecommerce
---------Q11---------
SELECT TOP 3 O.O_id, O.O_creationtimestamp, O.c_id
FROM Orders O
WHERE O.c_id = 51
ORDER BY O.O_creationtimestamp DESC;