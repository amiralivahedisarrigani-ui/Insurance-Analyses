/*
 * PROJECT: Insurance Analysis
 * AUTHOR: Amir Ali Vahedi
 * DESCRIPTION: This report contains the analysis for 10 key business questions.
 */

-- 1. Which age group files the most claims?

SELECT 
	Age_Group,
    COUNT(Customer_ID) AS count_customer,
    SUM(claim_count) AS SUM_Claim
FROM Insurance.Insurance_data
GROUP BY Age_Group;
