**Hospital Healthcare Operations Analysis**



**Business Problem**



*Hospitals deal with thousands of patients daily but often lack visibility into key operational metrics, like admission trends, treatment costs, doctor workload, and patient risk levels. Without data driven insights, hospital administrators struggle to allocate resources efficiently, manage costs, and improve patient outcomes.*

*This project analyzes a hospital dataset of 55,500 patient records to uncover operational inefficiencies, identify high risk patient segments, and provide actionable recommendations for hospital management.*



**About the Dataset**

\- *Source: Kaggle (Healthcare Dataset)*

*- Records: 55,500 patients*

*- Time Period: 2019 to 2024*

*- Key Fields: Patient demographics, medical conditions,* 

&#x20; *admission and discharge dates, billing amounts,* 

&#x20; *doctor names, insurance providers, and test results*



**Tools Used**

*- PostgreSQL 18 — data storage and querying*

*- pgAdmin 4 — database management and query execution*

*- Microsoft Notepad — documentation*



**Questions Answered**



*1. What are the seasonal admission patterns and do they impact hospital billing revenue?*

*2. Which medical conditions drive the highest treatment costs and longest patient stays?*

*3. How is doctor workload distributed and does higher patient volume correlate with higher billing?*

*4. Which insurance providers contribute most to hospital revenue and what is the average patient profile per provider?*

*5. Can patients be segmented by risk level using age, length of stay and diagnostic test results?*

*6. What does month over month revenue growth look like and are there identifiable revenue spikes worth investigating?*



**Key Insights**

\-Peak admissions occurred in August 2020, lowest in May 2024

\- Average billing stays consistently between $24,000 to $26,000 regardless of admission volume

\- All medical conditions average around 15 days stay but Obesity generates the highest billing costs

\- Cigna is the highest revenue insurance provider contributing $287,139,345

\- 2,622 patients classified as High Risk — majority are aged 75+ with Asthma

\- June 2019 saw the highest monthly revenue growth

\- Total cumulative hospital revenue across all months is $1,417,432,041



**Business Recommendations**

1\. Create dedicated fast track admission protocols for Asthma patients aged 75+ who represent the highest risk and longest stays

2\. Investigate what drove the June 2019 revenue spike and replicate those conditions

3\. Develop obesity management and prevention programs as Obesity generates the highest treatment costs

4\. Strengthen partnership with Cigna as they contribute  the highest revenue among all insurance providers

5\. Review doctor workload distribution — Joshua Rogers shows high billing with lower patient volume suggesting specialist reallocation opportunity



**How to Run This Project**



1.Install PostgreSQL 18 and pgAdmin 4

2.Create a database called healthcare\_db

3.Run the CREATE TABLE script from healthcare\_analysis.sql

4.Import healthcare\_dataset.csv using the \\copy command in psql

5\. Run queries in healthcare\_analysis.sql using pgAdmin Query Tool.

