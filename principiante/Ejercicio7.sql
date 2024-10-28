-- Show first name, last name, and the full province name of each patient.
SELECT 
	p.first_name,
	p.last_name,
    pn.province_name
FROM patients p
	LEFT JOIN province_names pn on p.province_id = pn.province_id;
