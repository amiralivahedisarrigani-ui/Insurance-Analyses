# Insurance Data Analysis Project

![MySQL](https://img.shields.io/badge/MySQL-4479A1.svg?style=for-the-badge&logo=MySQL&logoColor=white)
![Power BI](https://img.shields.io/badge/power_bi-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Microsoft Excel](https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)

## Overview

This project analyzes insurance data to uncover critical insights about customer demographics, health behaviors, regional risks, and financial performance. The analysis addresses 10 key business questions using SQL queries executed on an `Insurance` database. The insights help insurance providers optimize pricing strategies, identify high-risk customer segments, and improve risk assessment models.

## Reports

## Project Structure

```
    ├── LICENSE
    ├── README.md                          <- README file
    ├── sql_queries                        <- SQL queries for analysis
    │   │
    │   └── insurance_tables_db.sql        <- Database creation
    │   └── analysis.sql                   <- Final 10 business queries
    │   └── query_outputs                  <- Query result data
    ├── reports                            <- Final reports/results
    │   │
    │   └── insurance_analysis_report.docx <- Final analysis report
    │   └── insurance_analysis_report.pdf  <- PDF version
    │   
    ├── data                               <- Datasets used
    │   │
    │   ├── age_group_claims_charges.csv
    │   ├── age_group_smokers_percentage.csv
    │   ├── bmi_range_avg_tenure.csv
    │   ├── exercise_level_avg_claims.csv
    │   ├── gender_age_group_analysis.csv
    │   ├── high_risk_occupations_top3.csv
    │   ├── insurance_agency_comparison.csv
    │   ├── location_emirate_risk.csv
    │   ├── manager_performance.csv
    │   └── occupation_income_visits.csv
    │
    └── src                                <- Source files for project
```

## Dataset

The dataset used in this project contains comprehensive customer insurance data with the following attributes:
- Customer demographics (age group, gender, occupation)
- Health indicators (BMI range, smoking status, exercise level, hospital visits)
- Financial metrics (annual income, insurance charges, claim count)
- Geographic information (location emirate, region risk index)
- Insurance agency details and manager assignments

## Database

A MySQL database named `Insurance` has been created to store and manage the data. The database schema includes two main tables:
- `Insurance_data`: Contains all customer-level insurance information
- `Managers`: Mapping of insurance agencies to managers

The structure enables efficient querying for the 10 key business questions.

## Data Processing

The data obtained from various CSV sources required preprocessing to ensure consistency. SQL queries were utilized to clean, aggregate, and transform the data for meaningful analysis. All monetary values are in AED (UAE Dirham), and percentages are formatted to two decimal places.


## Project Includes:

**1. Age Group Analysis:** Identifies which age groups generate the most claims and highest average charges

**2. BMI Health Impact:** Evaluates how BMI ranges affect insurance tenure and hospital visit frequency

**3. Regional Risk Assessment:** Analyzes claims distribution and risk levels across UAE emirates

**4. Manager Performance:** Tracks top-performing managers by total client count and charges generated

**5. Occupation Insights:** Compares occupations by annual income and hospital visit patterns

**6. Agency Benchmarking:** Compares average charges across insurance agencies against company average

**7. Smoking Behavior Analysis:** Correlates smoking rates with hospital visits across age groups

**8. Exercise Level Impact:** Determines how exercise levels influence claim frequency

**9. High-Risk Occupation Analysis:** Identifies top 3 occupations with highest charges in high-risk band

**10. Demographic Tenure Analysis:** Examines how tenure and charges vary by gender and age group

## Key Insights Summary

| Insight Category | Key Finding |
|-----------------|--------------|
| **Age Groups** | Elders have highest avg charges (~19K AED) and most claims (92) |
| **BMI** | Normal weight = longest tenure (4.28 yrs); Obese Class I = most hospital visits (200) |
| **Regions** | Fujairah highest risk index (64.6); Dubai most claims (163) |
| **Managers** | Emily Johnson leads: 175 clients, ~2.41M AED in charges |
| **Agencies** | Daman charges +471 AED above company average |
| **Exercise** | High exercise level correlates with highest avg claims (0.715) |
| **Gender** | Males have higher avg charges than females across most age groups |

## Technologies Used

**Database Management System:** MySQL for hosting and managing the dataset

**Programming Languages:** SQL for data processing, querying, and analysis

**Visualization Tools:** Power BI for dashboard creation (planned)

**Data Processing:** Microsoft Excel for initial data validation

## Business Applications

This analysis is valuable for:
- **Insurance Companies:** Optimize premium pricing based on risk profiles
- **Healthcare Providers:** Understand patient behavior patterns
- **Policy Makers:** Develop targeted health intervention programs
- **Risk Managers:** Identify high-risk customer segments

## Future Enhancements

- [ ] Create interactive Power BI dashboard
- [ ] Implement predictive modeling for claim likelihood
- [ ] Add time-series analysis for seasonal trends
- [ ] Integrate external economic indicators

## Conclusion

The Insurance Data Analysis project provides comprehensive insights into customer behavior, risk factors, and financial performance within the insurance sector. Using SQL for data processing and analysis ensures accurate, reproducible results. These findings enable data-driven decision-making for pricing strategies, customer segmentation, and risk assessment.

## Author

- <ins><b>©2024 Amir Ali Vahedi. All rights reserved</b></ins>
- <b>[LinkedIn](www.linkedin.com/in/amiralivahedi)</b>
- <b>[GitHub](https://github.com/amiralivahedisarrigani-ui)</b>

## Contact

If you have any questions, suggestions, or want to collaborate, feel free to reach out. I would love to hear from you!
