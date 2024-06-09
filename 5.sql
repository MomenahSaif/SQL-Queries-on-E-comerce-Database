use ecommerce
------Q5-----------
SELECT TOP 5 P.P_name, AVG(R.Rating) AS AvgRating
FROM Product P
LEFT JOIN ProductReviews R ON P.PR_id = R.pr_id
GROUP BY P.P_name
ORDER BY AvgRating DESC;
