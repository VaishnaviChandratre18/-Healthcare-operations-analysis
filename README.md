**Healthcare Analytics *(Pandas • NumPy • Matplotlib • Seaborn) • SQL • Power BI***



***Business Problem***



*Hospitals deal with thousands of patients daily but often lack visibility into key operational metrics, like admission trends, treatment costs, doctor workload, and patient risk levels. Without data driven insights, hospital administrators struggle to allocate resources efficiently, manage costs, and improve patient outcomes.*



**Project Overview**



This project demonstrates an end-to-end healthcare analytics workflow on a dataset containing 55,000+ patient records, combining *Python* *(Pandas, NumPy, Matplotlib and Seaborn)* for data cleaning and exploratory analysis, *SQL* for business-focused querying, and *Power BI* for interactive reporting and visualization to generate insights on patient demographics, admissions, billing trends, length of stay, doctor performance, and overall hospital operational patterns.



**Dataset**



\-Source: Kaggle (Healthcare Dataset)

\-Records: 55,500 patients

Time Period: 2019 to 2024

Key Fields: Patient demographics, medical conditions, admission and discharge dates, billing amounts, doctor names, insurance providers, and test results



**Approach**

\- Cleaned and validated the raw hospital dataset using Python (handled duplicates, 

&#x20; corrected billing values, standardized patient names, converted dates)

\- Engineered a Length of Stay feature and calculated key summary statistics

\- Explored patterns and trends through visualizations, including patient demographics, 

&#x20; billing, and admissions over time

\- Answered business questions directly in SQL, covering monthly trends, medical 

&#x20; conditions, doctor performance, insurance analysis, and patient risk segmentation

\- Brought the findings together in an interactive Power BI dashboard

\- Summarized results into key insights and recommendations



**Tools used**

Python · Pandas · NumPy · Matplotlib · Seaborn · PostgreSQL · Power BI



**-Key insights**



\- Patient age is spread across multiple groups, with a higher concentration of 

&#x20; middle-aged patients

\- Average billing stays consistently between $24,000–$26,000 regardless of admission 

&#x20; volume, indicating standardized pricing across services

\- Arthritis and Diabetes are among the top conditions patients are admitted for, while 

&#x20; Asthma and Cancer are among the least common

\- All medical conditions average around 15 days of stay, but Obesity generates the 

&#x20; highest treatment costs

\- Insurance providers show noticeable differences in average billing; Cigna is the 

&#x20; highest revenue provider, contributing $287,139,345

\- Peak admissions occurred in August 2020, with the lowest in May 2024

\- June 2019 saw the highest monthly revenue growth, while total cumulative hospital 

&#x20; revenue across all months reached $1,417,432,041

\- Test result categories (Normal, Abnormal, Inconclusive) are relatively balanced 

&#x20; across the dataset

\- Age, Billing Amount, and Length of Stay show very weak relationships with one 

&#x20; another, suggesting these factors are largely independent

\- No significant outliers were found in the data



**Key Insights**



\- Patient age is spread across multiple groups, with a higher concentration of 

&#x20; middle-aged patients

\- Average billing stays consistently between $24,000–$26,000 regardless of admission 

&#x20; volume, indicating standardized pricing across services

\- Arthritis and Diabetes are among the top conditions patients are admitted for, while 

&#x20; Asthma and Cancer are among the least common

\- All medical conditions average around 15 days of stay, but Obesity generates the 

&#x20; highest treatment costs

\- Insurance providers show noticeable differences in average billing; Cigna is the 

&#x20; highest revenue provider, contributing $287,139,345

\- Peak admissions occurred in August 2020, with the lowest in May 2024

\- June 2019 saw the highest monthly revenue growth, while total cumulative hospital 

&#x20; revenue across all months reached $1,417,432,041

\- Test result categories (Normal, Abnormal, Inconclusive) are relatively balanced 

&#x20; across the dataset

\- Age, Billing Amount, and Length of Stay show very weak relationships with one 

&#x20; another, suggesting these factors are largely independent

\- No significant outliers were found in the data



**Recommendations**



1\. Develop obesity management and prevention programs, as Obesity generates the 

&#x20;  highest treatment costs among all conditions

2\. Strengthen the partnership with Cigna, as it contributes the highest revenue among 

&#x20;  all insurance providers

3\. Review doctor workload distribution — some doctors show high billing with lower 

&#x20;  patient volume, suggesting an opportunity for specialist case reallocation

4\. Investigate what drove the June 2019 revenue spike and evaluate whether those 

&#x20;  conditions can be replicated

5\. Introduce monthly performance monitoring to detect early drops in revenue or 

&#x20;  patient activity, and plan targeted engagement during historically weaker months.



