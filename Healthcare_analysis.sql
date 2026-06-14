SELECT TO_CHAR(admission_date,'YYYY-MM')AS Month,
ROUND(AVG(billing_amount),2)AS Avg_billing,
COUNT(*)AS Total_Admissions
FROM patients
Group by Month
Order by total_admissions ASC;

SELECT medical_condition,
ROUND(AVG(discharge_date-admission_date),1)AS avg_stay_days,
ROUND(AVG(billing_amount),2)as Avg_billing,
Count(*)AS Total_patients
From patients
GROUP BY medical_condition
Order By avg_billing DESC;

SELECT doctor,
ROUND(AVG(billing_amount),2) AS avg_billing,
ROUND(AVG(discharge_date-admission_date),1)AS Avg_stay_days,
COUNT(CASE WHEN test_result='Abnormal'THEN 1 END) AS patients_handled
FROM patients
GROUP BY doctor
HAVING COUNT(CASE WHEN test_result='Abnormal'THEN 1 END)>0
ORDER BY avg_billing DESC,patients_handled ASC
LIMIT 15;

SELECT insurance,
ROUND(AVG(billing_amount),2) AS AVG_billing_amount,
ROUND(SUM(billing_amount),2) AS total_billing_amount,
ROUND(AVG(age),1) AS avg_patient_age
FROM patients
GROUP BY insurance
ORDER BY avg_billing_amount DESC

SELECT
name,
age,
medical_condition,
discharge_date - admission_date AS avg_stay_days,billing_amount,
test_result,
CASE
WHEN age > 60 AND (discharge_date - admission_date) > 7 THEN 'HIGH RISK'
WHEN age > 40 AND (discharge_date - admission_date) > 5 THEN 'MEDIUM RISK'
ELSE 'LOW RISK'
END AS risk_category
FROM patients;

SELECT medical_condition,
COUNT(*) AS total_high_risk_patients
FROM patients
WHERE age>60 AND discharge_date-admission_date>7
GROUP BY medical_condition
ORDER BY total_high_risk_patients DESC

SELECT CASE WHEN age Between 60 and 65 then '60-65'
when age between 65 and 70 then '66-70'
else '75+' end as age_group,
count(*) as total_high_risk_patients
from patients
where age>60 and discharge_date-admission_date>7
group by age_group
order by age_group DESC;

SELECT COUNT(*) AS total_patients
FROM patients
WHERE age > 60
AND (discharge_date - admission_date) > 7;

WITH monthly_revenue AS (
SELECT TO_CHAR(admission_date,'YYYY-MM') AS month,
ROUND(SUM(billing_amount)) AS monthly_total
FROM patients
GROUP BY TO_CHAR(admission_date,'YYYY-MM')
)

SELECT month,monthly_total,
ROUND(SUM(monthly_total) OVER (ORDER BY month),2) AS running_total,
ROUND(LAG(monthly_total) OVER (ORDER BY month),2) AS prev_month_total,
ROUND((monthly_total - LAG(monthly_total) OVER (ORDER BY month))
/LAG(monthly_total) OVER (ORDER BY month)*100,2) AS growth_percentage
FROM monthly_revenue
ORDER BY month DESC;






