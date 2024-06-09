use ecommerce
SELECT A.C_name, count(distinct(D.CATEGORY)) AS CAT_NO
FROM DBO.Customers A, DBO.Orders B, DBO.Orderitems C,DBO.Product D
WHERE A.C_id=B.c_id
AND B.O_id=C.o_id
AND C.product_id=D.PR_id
group by a.C_name



