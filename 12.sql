use ecommerce
--------Q12---------


SELECT C.C_id, C.C_name
FROM Customers C
JOIN Orders O ON C.C_id = O.c_id
JOIN Orderitems Oi ON O.O_id = Oi.o_id
JOIN Product P ON Oi.product_id = P.PR_id
GROUP BY C.C_id, C.C_name
HAVING COUNT(DISTINCT P.s_id) >= 0;

