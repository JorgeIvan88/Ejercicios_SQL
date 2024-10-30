-- display the first name, last name and number of duplicate patients based on their first name and last name.
--Ex: A patient with an identical name can be considered a duplicate.
WITH pat AS (
  SELECT 
	patient_id,
    concat(first_name, " ", last_name) AS name,
    count(concat(first_name, " ", last_name)) AS num_of_duplication
  FROM patients
  GROUP BY name
  ORDER BY num_of_duplication DESC
)

SELECT 
	first_name,
	last_name,
  num_of_duplication
FROM patients p
JOIN pat ON p.patient_id = pat.patient_id
WHERE num_of_duplication > 1;
