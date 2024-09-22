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

--Creating age group buckets
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

--4. How many employees work at headquarters versus remote locations?
SELECT location, COUNT(*) AS Total
FROM `astral-pursuit-390317.hr_data.human_resources`
WHERE termdate IS NULL OR termdate > CURRENT_DATE
GROUP BY location
ORDER BY 2 DESC

--5. How does the gender distribution vary across departments and job titles?
SELECT department, jobtitle, gender, COUNT(*) AS Total
FROM `astral-pursuit-390317.hr_data.human_resources`
WHERE termdate IS NULL OR termdate > CURRENT_DATE
GROUP BY department, jobtitle, gender
ORDER BY 1, 4 DESC

--6. What is the distribution of job titles across the company?
SELECT jobtitle, COUNT(*) AS Total
FROM `astral-pursuit-390317.hr_data.human_resources`
WHERE termdate IS NULL OR termdate > CURRENT_DATE
GROUP BY jobtitle
ORDER BY 2 DESC

--7. What is the distribution of employees across locations by state?
SELECT location_state, COUNT(*) AS Total
FROM `astral-pursuit-390317.hr_data.human_resources`
WHERE termdate IS NULL OR termdate > CURRENT_DATE
GROUP BY location_state
ORDER BY 2 DESC
  
--8. What is the average length of employment for employees who have been terminated?
SELECT ROUND(AVG(DATE_DIFF(termdate, hire_date, YEAR))) AS avg_employment_length_years
FROM `astral-pursuit-390317.hr_data.human_resources`
WHERE termdate IS NOT NULL AND termdate < CURRENT_DATE

--9. Which department has the highest turnover rate?
SELECT department, total_count, terminated_count, ROUND((terminated_count/total_count)*100,2) AS Turnover_rate
FROM 
(
  SELECT department, COUNT(*) AS total_count,
  SUM (CASE 
    WHEN termdate IS NOT NULL AND termdate < CURRENT_DATE THEN 1 
    ELSE 0 
    END) AS terminated_count
  FROM `astral-pursuit-390317.hr_data.human_resources`
  GROUP BY department
) AS termed_by_dept
ORDER BY turnover_rate DESC

--10. How has the company's employee count changed over time based on hire and term dates?
SELECT year, hires, terminations, 
    hires - terminations AS net_change, 
    ROUND((hires - terminations)/hires*100,2) AS net_change_percent
FROM(
SELECT 
  EXTRACT(YEAR FROM hire_date) AS year,
  COUNT(*) AS hires,
  SUM(CASE WHEN termdate IS NOT NULL AND termdate < CURRENT_DATE THEN 1
  ELSE 0 END) AS terminations
FROM `astral-pursuit-390317.hr_data.human_resources`
GROUP BY year
) AS e1
ORDER BY year 

--11. What is the tenure distribution for each department?
SELECT department,
  ROUND(AVG(DATE_DIFF(termdate, hire_date, YEAR))) AS avg_tenure
FROM `astral-pursuit-390317.hr_data.human_resources`
WHERE termdate IS NOT NULL AND termdate < CURRENT_DATE
GROUP BY department
ORDER BY 2 DESC
