SELECT
    product_name,
    SUM(overall_user_count) AS total_overall_user_count
FROM
    ott_data
GROUP BY
    product_name
ORDER BY
    total_overall_user_count DESC;
