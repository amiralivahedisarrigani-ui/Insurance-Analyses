Use Insurance;
/*
 * PROJECT: Insurance Analysis
 * AUTHOR: Amir Ali Vahedi
 * DESCRIPTION: This report contains the analysis for 10 key business questions.
 */

-- 1. Age demographic of client and group with highest claims?

	SELECT 
        Age_Group,
        Round(AVG(charges),2) AS Average_Charges,
        SUM(claim_count) AS Total_Claim
    FROM Insurance.Insurance_data
    GROUP BY Age_Group
    ORDER BY Total_Claim DESC;

-- 2. Which weight class have more loyality and hospital vist

	select
		BMI_Range,
        Round(avg(insurance_tenure_years),2) AS Average_tenure,
        count(hospital_visits_per_year) AS Hospital_visit
	From Insurance.Insurance_data
    GROUP BY BMI_Range
    Order By Average_tenure DESC;
