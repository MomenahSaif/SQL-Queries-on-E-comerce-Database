use ecommerce
-------------Q21------------
SELECT a.C_name, b.O_no AS OrderNo, c.AddressLine1 AS Address1, c.AddressLine2 AS Address2, e.P_name
FROM dbo.Customers a
INNER JOIN dbo.Orders b ON a.C_id = b.C_id
INNER JOIN dbo.Address c ON a.C_id = c.C_id
INNER JOIN dbo.Orderitems d ON b.O_id = d.O_id
INNER JOIN dbo.Product e ON d.product_id = e.PR_id;
