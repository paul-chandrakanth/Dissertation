-- Correlation Analysis: Pearson correlation coefficients between variables
SELECT
    (COUNT(*) * SUM(overall_user_count * peak_time_user_count) - SUM(overall_user_count) * SUM(peak_time_user_count)) /
    (SQRT((COUNT(*) * SUM(overall_user_count * overall_user_count) - POWER(SUM(overall_user_count), 2)) *
    (COUNT(*) * SUM(peak_time_user_count * peak_time_user_count) - POWER(SUM(peak_time_user_count), 2)))) AS correlation_overall_peak,

    (COUNT(*) * SUM(overall_user_count * off_peak_time_user_count) - SUM(overall_user_count) * SUM(off_peak_time_user_count)) /
    (SQRT((COUNT(*) * SUM(overall_user_count * overall_user_count) - POWER(SUM(overall_user_count), 2)) *
    (COUNT(*) * SUM(off_peak_time_user_count * off_peak_time_user_count) - POWER(SUM(off_peak_time_user_count), 2)))) AS correlation_overall_off_peak,

    (COUNT(*) * SUM(peak_time_user_count * off_peak_time_user_count) - SUM(peak_time_user_count) * SUM(off_peak_time_user_count)) /
    (SQRT((COUNT(*) * SUM(peak_time_user_count * peak_time_user_count) - POWER(SUM(peak_time_user_count), 2)) *
    (COUNT(*) * SUM(off_peak_time_user_count * off_peak_time_user_count) - POWER(SUM(off_peak_time_user_count), 2)))) AS correlation_peak_off_peak
FROM
    ott_data
WHERE
    overall_user_count IS NOT NULL
    AND peak_time_user_count IS NOT NULL
    AND off_peak_time_user_count IS NOT NULL;
