use ecommerce
------------------------03.1----------------
SELECT p.P_name, i.QuantityInStock
FROM Product p
INNER JOIN Inventory i ON p.PR_id = i.pr_id;

------------------------03.2----------------
SELECT C_name, C_Phoneno FROM Customers WHERE C_id = (SELECT C_id FROM Orders WHERE O_id = 89);

------------------------03.3----------------
SELECT SUM(Oi_unitprice * Oi_quantity) AS TotalAmount
FROM Orderitems
WHERE O_id = 83;
------------------------03.4----------------
SELECT Comment, Rating FROM ProductReviews WHERE pr_id = 43;

