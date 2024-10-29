-- Show the total amount of male patients and the total amount of female patients in the patients table.
Display the two results in the same row.
SELECT 
  SUM(Gender = 'M') as male_count, 
  SUM(Gender = 'F') AS female_count
FROM patients
