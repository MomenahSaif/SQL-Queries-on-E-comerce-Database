USE ecommerce
SELECT A.Category, A.P_name
FROM DBO.Product A, DBO.Inventory B
WHERE A.PR_id=B.pr_id AND B.QuantityInStock>0 
AND A.PR_id NOT IN (SELECT DBO.ProductReviews.pr_id FROM DBO.ProductReviews)