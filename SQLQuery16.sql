SELECT
    product_name,
    MAX(peak_time_user_count) AS peak_time_user_count
FROM
    ott_data
GROUP BY
    product_name
ORDER BY
    peak_time_user_count DESC;
