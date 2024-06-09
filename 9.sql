use ecommerce

------------Q9----------
SELECT P.PR_id, P.P_name, P.Category, I.QuantityInStock
FROM Product P
JOIN Inventory I ON P.PR_id = I.pr_id
WHERE I.QuantityInStock < (SELECT AVG(QuantityInStock) FROM Inventory);