# InsightCorp Human Resources Data Analysis

### Executive Summary:
Between 2000 and 2020, InsightCorp maintained a stable workforce with a gender split of 50.9% male, 46.4% female, and 2.8% non-conforming. Sales, HR, and Accounting have the longest tenure, while Auditing, Legal, and Training face the highest turnover. The overall company turnover rate stands at 11.65%, with an average employment duration of 8 years. Over 50% of employees identify as White (28.5%), Two or More Races (16.4%), or Black (16.3%). The workforce is primarily based in Ohio (75.1%) with 24.9% working remotely. Employee growth peaked in 2018 but declined in 2019 and 2020. Engineering, Accounting, and Sales are the largest departments.

These insights will support the company’s strategic goals, especially in areas such as diversity and inclusion, employee retention, and workforce planning and ultimately empower HR to make informed decisions that will drive organizational success.
<img width="913" alt="image" src="https://github.com/user-attachments/assets/fa6a9b6b-df89-4478-818c-1ff4ce99d5ae">

### Company Background:
InsightCorp is a mid-sized technology solutions company that specializes in providing cloud services and IT consulting to businesses across the United States. The company operates from its headquarters in Columbus, Ohio, and has a variety of satellite offices and remote work locations throughout the country. With over 10,000 employees spanning different departments such as Service, Marketing, Sales, Human Resources, and Auditing, InsightCorp is committed to building a diverse and inclusive workforce. The company prides itself on having a dynamic, cross-functional team working in diverse roles ranging from software engineers to data analysts and HR professionals.

### Project Objective:
The goal of this project is to analyze the company's employee data to gain valuable insights into its workforce composition, distribution, and trends over time. This analysis will help the HR and executive teams at InsightCorp make data-driven decisions to improve employee engagement, diversity, and retention. The dataset contains detailed employee records, including demographic information, job titles, department affiliations, location details, and employment history. 

### Data Structure & Initial Checks:
InsightCorp's database is made up of the following columns shown below with a total of 22,214 records.

<img width="209" alt="image" src="https://github.com/user-attachments/assets/8ffe389b-ebf7-4268-a1bf-45a153277a9f">

Prior to beginning the analysis, a variety of checks were conducted for quality control and familiarization with the dataset. The data cleaning and data validation checks can be found in the changelog [here](https://drive.google.com/file/d/1rjXb9YdBGuQ0HZeeopQuqcMJljWLmsNw/view?usp=share_link).

### Data Exclusions and Adjustments:
- **Active Employee Focus**: Analyses involving workforce demographics, location, job titles, and department distributions focus on employees without a termination date or with a future termination date. Including terminated employees would distort these metrics, as they are no longer part of the company’s workforce.

- **Turnover and Tenure**: For analyses involving turnover rates, employment duration, and historical trends (e.g., employee count over time), terminated employees are included. However, they should only be used in the context of these questions.

This approach ensures the accuracy and relevance of the insights for current workforce trends while still allowing meaningful analysis of past employee behavior for turnover and retention metrics.

***Note: The total number of active and terminated employees used in the calculations are based on employees' status as of 9/22/24***

### Recommendations:
- Focus on reducing turnover in Auditing, Legal, and Training.
- Enhance diversity initiatives, especially in underrepresented racial groups.
- Analyze the decline in employee count post-2018 for insights into workforce reduction.
- Strengthen remote work policies to support the 24.9% remote workforce.
- Leverage strong tenure in Sales, HR, and Accounting for retention strategies.
- To lower the overall turnover rate (11.65%), improve employee engagement through career development programs, mentorship, and flexible work policies.


