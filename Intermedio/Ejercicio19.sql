-- Show first_name, last_name, and the total number of admissions attended for each doctor.
--Every admission has been attended by a doctor.
SELECT
  first_name,
  last_name,
  COUNT(*) AS admissions_total
FROM admissions a
  JOIN doctors d ON d.doctor_id = a.attending_doctor_id
GROUP BY attending_doctor_id
