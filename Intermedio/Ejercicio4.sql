-- Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'. Primary diagnosis is stored in the admissions table.
SELECT 
	p.patient_id,
    p.first_name,
    p.last_name
FROM patients p
	Left join admissions a ON p.patient_id = a.patient_id
where diagnosis = "Dementia";
