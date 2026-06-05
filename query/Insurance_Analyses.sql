Use Insurance;
/*
 * PROJECT: Insurance Analysis
 * AUTHOR: Amir Ali Vahedi
 * DESCRIPTION: This report contains the analysis for 10 key business questions.
 */

-- 1. Top age group by claims and average charges?

	SELECT 
        Age_Group,
        Round(AVG(charges),2) AS Average_Charges,
        SUM(claim_count) AS Total_Claim
    FROM Insurance.Insurance_data
    GROUP BY Age_Group
    ORDER BY Total_Claim DESC;

-- 2. BMI range with highest tenure and hospital visits?

	select
		BMI_Range,
        Round(avg(insurance_tenure_years),2) AS Average_tenure,
        count(hospital_visits_per_year) AS Hospital_visit
	From Insurance.Insurance_data
    GROUP BY BMI_Range
    Order By Average_tenure DESC;
    
-- 3. Which region has most claims and risk level?
	select
        location_emirate,
        Round(AVG(region_risk_index), 1) AS Region_Risk,
        Sum(claim_count) AS Total_Claim
	From Insurance.Insurance_data
    group by location_emirate
    order by Region_Risk DESC;

-- 4. Which manager generates the most total charges?

	select 
		m.Manager_Name,
        count(i.Customer_ID) AS Total_client,
        round(SUM(i.charges), 1) AS Total_Charges
	from Insurance_data AS i
	join Managers AS m
		on i.Insurance_Agency = m.Insurance_Agency
    GROUP BY m.Manager_Name
    order by Total_Charges DESC;
    
-- 5. Which occupation has the highest income and hospital visits?
	select 
		occupation,
        round(AVG(annual_income_aed), 1) as annual_income,
        count(hospital_visits_per_year) as annual_hospital_visits
	from Insurance_data
    group by occupation
    order by annual_income DESC;

-- 6. Which agency charges the most on average?

with Average_Agency AS(
	select
		insurance_agency,
		avg(charges) as average_agency_Charges
	from Insurance_data
    group by insurance_agency
),
Overall_average AS(
	select
    Avg(charges) AS overall_avg_charges
    from Insurance_data
)
	select
		insurance_agency,
		round(a.average_agency_Charges, 2) as agency_avg,
        round(o.overall_avg_charges, 2) as company_avg,
        round(a.average_agency_Charges - o.overall_avg_charges, 2) as Diffrence
from Average_Agency as a, Overall_average as o
ORDER BY a.average_agency_Charges DESC;

-- 7. Smoking rate and hospital visits by age group?

	SELECT 
		Age_Group,
        CONCAT(
    FORMAT(SUM(CASE WHEN smoker = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2),
    '%') AS smokers,
	AVG(hospital_visits_per_year) AS avg_hospital_visits
	FROM Insurance.Insurance_data
	GROUP BY Age_Group;

-- 8. Do exercise levels affect claim counts?

	select
		exercise_level,
        Count(Customer_ID) As Total_customer,
        AVG(claim_count) AS avg_claims
	FROM Insurance.Insurance_data
	group by exercise_level
    order by avg_claims DESC;
    
-- 9. Which occupations drive highest charges in high-risk band?

WITH HighRisk_Occupations AS (
    SELECT 
        occupation, 
        SUM(charges) AS total_charges
    FROM Insurance.Insurance_data
    WHERE Region_Risk_Band = 'High Risk'   -- FIXED 
    GROUP BY occupation
),
Ranked_Occupations AS (
    SELECT 
        occupation,
        total_charges,
        RANK() OVER (ORDER BY total_charges DESC) AS rank_position
    FROM HighRisk_Occupations
)
SELECT 
    occupation,
    ROUND(total_charges, 2) AS total_charges
FROM Ranked_Occupations
WHERE rank_position <= 3
ORDER BY rank_position;

-- 10. How do tenure and charges vary by gender and age group?
SELECT 
    Gender, 
    Age_Group,
    COUNT(Customer_ID) AS total_customers, 
    ROUND(AVG(insurance_tenure_years), 2) AS avg_tenure, 
    ROUND(AVG(charges), 2) AS avg_charges
FROM Insurance.Insurance_data
GROUP BY Gender, Age_Group
ORDER BY Gender, Age_Group;
