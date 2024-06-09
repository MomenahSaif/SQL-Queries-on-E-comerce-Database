use ecommerce

--------------Q17---------

SELECT TOP 5
       C.C_id AS Customer_ID,
       C.C_name AS Customer_Name,
       O.O_id AS Order_ID,
       O.O_totalamount AS Order_Total_Amount,
       O.O_creationtimestamp AS Order_Creation_Timestamp,
       Oi.Oi_id AS Order_Item_ID,
       P.P_name AS Product_Name,
       Oi.Oi_quantity AS Order_Item_Quantity,
       Oi.Oi_unitprice AS Order_Item_Unit_Price
FROM Customers C
JOIN Orders O ON C.C_id = O.c_id
JOIN Orderitems Oi ON O.O_id = Oi.o_id
JOIN Product P ON Oi.product_id = P.PR_id
ORDER BY O.O_creationtimestamp DESC;
