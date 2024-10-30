-- For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.
SELECT
  CONCAT(patients.first_name, ' ', patients.last_name) AS patient_name,
  diagnosis,
  CONCAT(doctors.first_name,' ',doctors.last_name) AS doctor_name
FROM patients p
  JOIN admissions a ON a.patient_id = p.patient_id
  JOIN doctors d ON d.doctor_id = a.attending_doctor_id;
