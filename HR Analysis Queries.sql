--1. What is the gender breakdown of employees in the company?
SELECT gender, COUNT(*) AS Total
FROM `astral-pursuit-390317.hr_data.human_resources` 
WHERE termdate IS NULL OR termdate > CURRENT_DATE
GROUP BY gender

--2. What is the race breakdown of employees in the company?
SELECT race, COUNT(*) AS Total
FROM `astral-pursuit-390317.hr_data.human_resources` 
WHERE termdate IS NULL OR termdate > CURRENT_DATE
GROUP BY race
ORDER BY 2 DESC

--3. What is the age distribution of employees in the company?
--Finding Min and Max age first for age buckets
SELECT 
  MIN(age) AS Youngest,
  MAX(age) AS Oldest
FROM `astral-pursuit-390317.hr_data.human_resources`
WHERE termdate IS NULL OR termdate > CURRENT_DATE;


