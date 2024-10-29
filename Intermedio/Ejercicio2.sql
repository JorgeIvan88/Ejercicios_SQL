-- Show unique first names from the patients table which only occurs once in the list. For example, if two or more people are named 'John' in the first_name column then don't include their name in the output list. If only 1 person is named 'Leo' then include them in the output.
WITH counter AS (
  SELECT DISTINCT first_name, 
  COUNT(first_name) OVER (PARTITION BY first_name) AS count_name
FROM patients
ORDER BY first_name
)
  
SELECT first_name
FROM counter
WHERE count_name = 1
