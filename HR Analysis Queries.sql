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


SELECT 
  CASE 
    WHEN age >=22 AND age <=25 THEN '22-25'
    WHEN age >=26 AND age <=30 THEN '26-30'
    WHEN age >=31 AND age <=35 THEN '31-35'
    WHEN age >=36 AND age <=40 THEN '36-40'
    WHEN age >=41 AND age <=45 THEN '41-45'
    WHEN age >=46 AND age <=50 THEN '46-50'
    WHEN age >=51 AND age <=55 THEN '51-55'
    ELSE '55+'
  END AS age_group,
  COUNT(*) AS Total
FROM `astral-pursuit-390317.hr_data.human_resources`
WHERE termdate IS NULL OR termdate > CURRENT_DATE
GROUP BY age_group
ORDER BY age_group

