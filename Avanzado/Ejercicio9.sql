-- For each day display the total amount of admissions on that day. Display the amount changed from the previous date.
SELECT
	admission_date,
    COUNT(admission_date) AS admission_day,
    COUNT(admission_date) - LAG(COUNT(admission_date),1) OVER() AS admission_count_change
FROM admissions
GROUP BY admission_date;
