-- Feature Engineering: Calculate daily active users, weekly active users, and churn rate
SELECT
    product_name,
    AVG(daily_active_users) AS avg_daily_active_users,
    AVG(weekly_active_users) AS avg_weekly_active_users,
    AVG(monthly_churn_rate) AS avg_monthly_churn_rate
FROM
    ott_data
WHERE
    daily_active_users IS NOT NULL
    AND weekly_active_users IS NOT NULL
    AND monthly_churn_rate IS NOT NULL
GROUP BY
    product_name
ORDER BY
    product_name;
