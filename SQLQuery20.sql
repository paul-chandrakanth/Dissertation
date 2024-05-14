-- Time Series Analysis: Overall user count over time (excluding null values)
SELECT
    product_name,
    AVG(overall_user_count) AS avg_overall_user_count
FROM
    ott_data
WHERE
    overall_user_count IS NOT NULL
GROUP BY
    product_name
ORDER BY
    product_name;
