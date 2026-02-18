use student_db;

SELECT * FROM student_health;

SELECT COUNT(*) FROM student_health;

SELECT Physical_Activity, COUNT(*) 
FROM student_health
GROUP BY Physical_Activity;

SELECT Gender, AVG(Study_Hours)
FROM student_health
GROUP BY Gender;

SELECT * FROM student_health
where Health_Risk_Level="High";

ALTER TABLE student_health
ADD StressCategory VARCHAR(20);

SET SQL_SAFE_UPDATES = 0;

UPDATE student_health
SET StressCategory =
CASE
    WHEN Stress_Level_Biosensor <= 3 THEN 'Low'
    WHEN Stress_Level_Biosensor <= 7 THEN 'Medium'
    ELSE 'High'
END
WHERE Student_ID IS NOT NULL;

ALTER TABLE student_health
ADD StudyCategory VARCHAR(20);

UPDATE student_health
SET StudyCategory=
CASE
    WHEN Study_Hours<= 24 THEN 'Low'
    WHEN Study_Hours<= 36 THEN 'Medium'
    ELSE 'High'
END
WHERE Student_ID IS NOT NULL;

SELECT * FROM student_health LIMIT 10;

SELECT Gender, AVG(Stress_Level_Biosensor) AS Avg_Stress
FROM student_health
GROUP BY Gender;

SELECT Physical_Activity, AVG(Stress_Level_Biosensor)
FROM student_health
GROUP BY Physical_Activity;

select * from student_health
where Health_Risk_Level = "High"
and StressCategory = "High";

select * from student_health 
where Sleep_Quality= "Poor"
and StressCategory="High";





