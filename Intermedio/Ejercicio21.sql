-- Display the total amount of patients for each province. Order by descending.
SELECT 
	pr.province_name,
    count(pa.province_id) AS patient_count
FROM province_names pr
	JOIN patients pa ON pr.province_id = pa.province_id
GROUP BY pa.province_id
ORDER BY patient_count DESC;
