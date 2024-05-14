-- User Behavior Analysis: Average time spent per session and average logins per user
SELECT
    product_name,
    AVG(time_spent_per_session) AS avg_time_spent_per_session,
    AVG(logins_per_user) AS avg_logins_per_user_daily
FROM
    ott_data
WHERE
    time_spent_per_session IS NOT NULL
    AND logins_per_user IS NOT NULL
GROUP BY
    product_name
ORDER BY
    product_name;
