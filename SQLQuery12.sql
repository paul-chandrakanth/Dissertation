CREATE TABLE ott_data (
    product_name VARCHAR(100),
    overall_user_count DECIMAL(10, 2),
    peak_time_user_count DECIMAL(10, 2),
    off_peak_time_user_count DECIMAL(10, 2),
    average_user_count DECIMAL(10, 2),
    daily_active_users DECIMAL(10, 2),
    weekly_active_users DECIMAL(10, 2),
    monthly_churn_rate DECIMAL(10, 2),
    logins_per_user DECIMAL(10, 2),
    time_spent_per_session DECIMAL(10, 2),
    server_capacity_peak VARCHAR(50),
    cpu_peak VARCHAR(50),
    storage_peak VARCHAR(50),
    volume_peak VARCHAR(50),
    server_capacity_off_peak VARCHAR(50),
    cpu_off_peak VARCHAR(50),
    storage_off_peak VARCHAR(50),
    volume_off_peak VARCHAR(50)
);

