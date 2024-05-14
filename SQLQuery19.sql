SELECT
    product_name,
    CASE
        WHEN server_capacity_peak = 'High' THEN 'System A'
        WHEN server_capacity_peak = 'Medium' THEN 'System B'
        WHEN server_capacity_peak = 'Low' THEN 'System C'
        ELSE 'Unknown'
    END AS recommended_system
FROM
    ott_data;
