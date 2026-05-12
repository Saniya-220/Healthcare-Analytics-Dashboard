CREATE DATABASE healthcare_db;
USE healthcare_db;
SHOW COLUMNS FROM healthcare_dataset;

-- 1. Total patients
SELECT COUNT(*) AS Total_Patients FROM healthcare_dataset;

-- 2. Average billing by medical condition
SELECT `Medical Condition`, ROUND(AVG(`Billing Amount`),2) AS Avg_Billing
FROM healthcare_dataset
GROUP BY `Medical Condition`
ORDER BY Avg_Billing DESC;

-- 3. Most common admission type
SELECT `Admission Type`, COUNT(*) AS Count
FROM healthcare_dataset
GROUP BY `Admission Type`
ORDER BY Count DESC;

-- 4. Average length of stay by condition
SELECT `Medical Condition`, ROUND(AVG(`Length os Stay`),1) AS Avg_Stay_Days
FROM healthcare_dataset
GROUP BY `Medical Condition`;

-- 5. Revenue by insurance provider
SELECT `Insurance Provider`, ROUND(SUM(`Billing Amount`),2) AS Total_Revenue
FROM healthcare_dataset
GROUP BY `Insurance Provider`
ORDER BY Total_Revenue DESC;

-- 6. Test result distribution
SELECT `Test Results`, COUNT(*) AS Count
FROM healthcare_dataset
GROUP BY `Test Results`;