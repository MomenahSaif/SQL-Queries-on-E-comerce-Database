use ecommerce
---------------Q20-----------


SELECT
    ps.PR_id,
    ps.P_name,
    ps.total_sales,
    r.ReviewID,
    r.Comment,
    r.rating
FROM
    (SELECT
        p.PR_id,
        p.P_name,
        SUM(oi.Oi_quantity * oi.Oi_unitprice) AS total_sales
    FROM
        Product p
    JOIN
        Orderitems oi ON p.PR_id = oi.product_id
    GROUP BY
        p.PR_id, p.P_name
    ) ps
JOIN
    ProductReviews r ON ps.PR_id = r.pr_id
ORDER BY
    ps.total_sales DESC

