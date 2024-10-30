-- For each doctor, display their id, full name, and the first and last admission date they attended.
SELECT 
	d.doctor_id,
    concat(d.first_name," ", d.last_name) as full_name,
    min(a.admission_date) as first_admission_date,
    max(a.admission_date) as first_admission_date
FROM doctors d
join admissions a ON d.doctor_id = a.attending_doctor_id
group by doctor_id;
