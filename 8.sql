use ecommerce
-----------Q8-----------
SELECT C.C_id, C.C_name
FROM Customers C
LEFT JOIN ProductReviews R ON C.C_id = R.C_id
WHERE R.Rating= 0
