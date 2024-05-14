SELECT
    product_name,
    CASE
        WHEN MAX(peak_time_user_count) > 40 THEN 'System A'
        WHEN MAX(peak_time_user_count) > 20 THEN 'System B'
        ELSE 'System C'
    END AS recommended_system
FROM
    ott_data
GROUP BY
    product_name;
