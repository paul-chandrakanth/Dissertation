SELECT
    product_name,
    MIN(off_peak_time_user_count) AS off_peak_time_user_count
FROM
    ott_data
GROUP BY
    product_name
ORDER BY
    off_peak_time_user_count DESC;
