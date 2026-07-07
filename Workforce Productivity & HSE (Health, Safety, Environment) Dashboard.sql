# creating workforce database
CREATE DATABASE workforce_db;

# setting the workforce database as default for existing session
USE workforce_db;

# creating employees database
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    gender ENUM('Male','Female') NOT NULL,
    job_role VARCHAR(100) NOT NULL,
    department VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL
);

# inserting new records into the employees table and joining pieces of data together
INSERT INTO employees (first_name, last_name, gender, job_role, department, hire_date)
SELECT
    CONCAT('Employee', n),
    CONCAT('Surname', n),

    # Gender alternates Male/Female
    IF(n % 2 = 0, 'Female', 'Male'),

    # Job roles (never NULL)
    CASE
        WHEN n % 6 = 0 THEN 'Machine Operator'
        WHEN n % 6 = 1 THEN 'Forklift Driver'
        WHEN n % 6 = 2 THEN 'Safety Officer'
        WHEN n % 6 = 3 THEN 'Electrician'
        WHEN n % 6 = 4 THEN 'Warehouse Assistant'
        ELSE 'Maintenance Technician'
    END,

    # Departments
    CASE
        WHEN n % 5 = 0 THEN 'Manufacturing'
        WHEN n % 5 = 1 THEN 'Construction'
        WHEN n % 5 = 2 THEN 'Logistics'
        WHEN n % 5 = 3 THEN 'Mining'
        ELSE 'Administration'
    END,

    # Hire dates spread over time
    DATE_ADD('2018-01-01', INTERVAL n DAY)

FROM (
    SELECT 1 AS n UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5
    UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10
    UNION SELECT 11 UNION SELECT 12 UNION SELECT 13 UNION SELECT 14 UNION SELECT 15
    UNION SELECT 16 UNION SELECT 17 UNION SELECT 18 UNION SELECT 19 UNION SELECT 20
    UNION SELECT 21 UNION SELECT 22 UNION SELECT 23 UNION SELECT 24 UNION SELECT 25
    UNION SELECT 26 UNION SELECT 27 UNION SELECT 28 UNION SELECT 29 UNION SELECT 30
    UNION SELECT 31 UNION SELECT 32 UNION SELECT 33 UNION SELECT 34 UNION SELECT 35
    UNION SELECT 36 UNION SELECT 37 UNION SELECT 38 UNION SELECT 39 UNION SELECT 40
    UNION SELECT 41 UNION SELECT 42 UNION SELECT 43 UNION SELECT 44 UNION SELECT 45
    UNION SELECT 46 UNION SELECT 47 UNION SELECT 48 UNION SELECT 49 UNION SELECT 50
    UNION SELECT 51 UNION SELECT 52 UNION SELECT 53 UNION SELECT 54 UNION SELECT 55
    UNION SELECT 56 UNION SELECT 57 UNION SELECT 58 UNION SELECT 59 UNION SELECT 60
    UNION SELECT 61 UNION SELECT 62 UNION SELECT 63 UNION SELECT 64 UNION SELECT 65
    UNION SELECT 66 UNION SELECT 67 UNION SELECT 68 UNION SELECT 69 UNION SELECT 70
    UNION SELECT 71 UNION SELECT 72 UNION SELECT 73 UNION SELECT 74 UNION SELECT 75
    UNION SELECT 76 UNION SELECT 77 UNION SELECT 78 UNION SELECT 79 UNION SELECT 80
    UNION SELECT 81 UNION SELECT 82 UNION SELECT 83 UNION SELECT 84 UNION SELECT 85
    UNION SELECT 86 UNION SELECT 87 UNION SELECT 88 UNION SELECT 89 UNION SELECT 90
    UNION SELECT 91 UNION SELECT 92 UNION SELECT 93 UNION SELECT 94 UNION SELECT 95
    UNION SELECT 96 UNION SELECT 97 UNION SELECT 98 UNION SELECT 99 UNION SELECT 100
) AS numbers;

# updates employees table
UPDATE employees
SET first_name = CONCAT('Worker_', employee_id),
    last_name  = CONCAT('Staff_', employee_id);

# create productivity table
CREATE TABLE productivity (
    productivity_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    work_date DATE NOT NULL,
    units_completed INT NOT NULL,
    efficiency_score DECIMAL(5,2) NOT NULL,
    quality_rating ENUM('Low','Medium','High') NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

# inserting into productivity table
INSERT INTO productivity (employee_id, work_date, units_completed, efficiency_score, quality_rating)
SELECT
    e.employee_id,
    DATE_ADD('2025-01-01', INTERVAL d.day_num DAY),

    # Units completed (realistic range)
    FLOOR(50 + RAND() * 100),

    #  Efficiency score (60–100)
    ROUND(60 + RAND() * 40, 2),

    # Quality rating distribution
    CASE
        WHEN RAND() < 0.20 THEN 'Low'
        WHEN RAND() < 0.70 THEN 'Medium'
        ELSE 'High'
    END

FROM employees e
CROSS JOIN (
    SELECT 0 AS day_num UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4
    UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
    UNION SELECT 10 UNION SELECT 11 UNION SELECT 12 UNION SELECT 13 UNION SELECT 14
    UNION SELECT 15 UNION SELECT 16 UNION SELECT 17 UNION SELECT 18 UNION SELECT 19
    UNION SELECT 20 UNION SELECT 21 UNION SELECT 22 UNION SELECT 23 UNION SELECT 24
    UNION SELECT 25 UNION SELECT 26 UNION SELECT 27 UNION SELECT 28 UNION SELECT 29
) d;

# creating incidents table
CREATE TABLE incidents (
    incident_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    incident_date DATE NOT NULL,
    incident_type VARCHAR(100) NOT NULL,
    severity ENUM('Minor','Moderate','Severe') NOT NULL,
    days_lost INT DEFAULT 0,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

# inseting data into incidents table
INSERT INTO incidents (employee_id, incident_date, incident_type, severity, days_lost)
SELECT
    e.employee_id,
    DATE_ADD('2025-01-01', INTERVAL FLOOR(RAND() * 30) DAY),
    CASE
        WHEN RAND() < 0.25 THEN 'Slip and Fall'
        WHEN RAND() < 0.45 THEN 'Equipment Injury'
        WHEN RAND() < 0.65 THEN 'Back Strain'
        WHEN RAND() < 0.80 THEN 'Chemical Exposure'
        ELSE 'Vehicle Accident'
    END,
    CASE
        WHEN RAND() < 0.70 THEN 'Minor'
        WHEN RAND() < 0.95 THEN 'Moderate'
        ELSE 'Severe'
    END,
    CASE
        WHEN RAND() < 0.70 THEN 0
        WHEN RAND() < 0.95 THEN 2
        ELSE 10
    END
FROM employees e
WHERE RAND() < 0.20;

# creating attendance table
CREATE TABLE attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    attendance_date DATE NOT NULL,
    status ENUM('Present','Absent','Late') NOT NULL,
    hours_worked DECIMAL(4,2) NOT NULL,
    overtime_hours DECIMAL(4,2) DEFAULT 0,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

# inserting data into attendance table
INSERT INTO attendance (employee_id, attendance_date, status, hours_worked, overtime_hours)
SELECT
    e.employee_id,

    # Attendance date over 30 days
    DATE_ADD('2025-01-01', INTERVAL d.day_num DAY),

    # Status distribution
    CASE
        WHEN RAND() < 0.10 THEN 'Absent'
        WHEN RAND() < 0.20 THEN 'Late'
        ELSE 'Present'
    END AS status,

    # Hours worked
    CASE
        WHEN RAND() < 0.10 THEN 0
        WHEN RAND() < 0.20 THEN 6
        ELSE 8
    END AS hours_worked,

    # Overtime hours
    CASE
        WHEN RAND() < 0.15 THEN 2
        ELSE 0
    END AS overtime_hours
FROM employees e
CROSS JOIN (
    SELECT 0 AS day_num UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4
    UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
    UNION SELECT 10 UNION SELECT 11 UNION SELECT 12 UNION SELECT 13 UNION SELECT 14
    UNION SELECT 15 UNION SELECT 16 UNION SELECT 17 UNION SELECT 18 UNION SELECT 19
    UNION SELECT 20 UNION SELECT 21 UNION SELECT 22 UNION SELECT 23 UNION SELECT 24
    UNION SELECT 25 UNION SELECT 26 UNION SELECT 27 UNION SELECT 28 UNION SELECT 29
) d;

#display records in the tables
SELECT *
FROM attendance;
SELECT *
FROM employees;
SELECT *
FROM incidents;
SELECT *
FROM productivity;

# 10 highest job roles and total units made
SELECT 
    e.employee_id,
    e.job_role,
    SUM(p.units_completed) AS total_units
FROM productivity p
INNER JOIN employees e 
	ON p.employee_id = e.employee_id
GROUP BY e.employee_id, e.job_role
ORDER BY total_units DESC
LIMIT 10;

# department and their average efficiency score
SELECT 
    e.department,
    ROUND(AVG(p.efficiency_score), 2) AS avg_efficiency
FROM productivity p
INNER JOIN employees e 
	ON p.employee_id = e.employee_id
GROUP BY e.department;

# quality rating and their duration
SELECT 
    quality_rating,
    COUNT(*) AS total_days
FROM productivity
GROUP BY quality_rating;

# total incidents in each department
SELECT 
    e.department,
    COUNT(i.incident_id) AS total_incidents
FROM incidents i
INNER JOIN employees e
	ON i.employee_id = e.employee_id
GROUP BY e.department;

# severity and their total cases
SELECT 
    severity,
    COUNT(*) AS total_cases
FROM incidents
GROUP BY severity;

# job role vs total incidents
SELECT 
    e.job_role,
    COUNT(*) AS total_incidents
FROM incidents i
INNER JOIN employees e ON i.employee_id = e.employee_id
GROUP BY e.job_role
ORDER BY total_incidents DESC;

# employee performance analysis
SELECT 
    employee_id,
    COUNT(*) AS total_days,
    SUM(status = 'Present') AS present_days,
    SUM(status = 'Absent') AS absent_days,
    SUM(status = 'Late') AS late_days,
    SUM(hours_worked) AS total_hours
FROM attendance
GROUP BY employee_id;

# absenteeism rate
  SELECT
	ROUND(SUM(CASE WHEN status = 'Absent' THEN 1 ELSE 0 END)/COUNT(*) *100,2)
  AS absenteeism_rate_pct
  FROM  attendance;
  
  # average hours worked
  SELECT
	ROUND(AVG(hours_worked), 2) as avg_hours_worked
  FROM attendance
  WHERE status <> 'Absent';
  
  # average overtime hours worked
  SELECT 
    ROUND(AVG(overtime_hours), 2) AS avg_overtime_hours
FROM attendance
WHERE overtime_hours > 0;

# project performance analysis
SELECT 
    attendance_id,
    COUNT(*) AS records,
    ROUND(AVG(hours_worked), 2) AS avg_hours,
    ROUND(AVG(overtime_hours), 2) AS avg_overtime
FROM attendance
GROUP BY attendance_id;

# attendance analysis
SELECT 
    attendance_date,
    status,
    COUNT(*) AS count
FROM attendance
GROUP BY attendance_date, status;

#top ranking employee in each department
  WITH RankedProductivity AS (
    SELECT 
        e.department,
        e.employee_id,
        ROUND(AVG(p.efficiency_score),2) AS avg_score,
        DENSE_RANK() OVER(PARTITION BY e.department ORDER BY AVG(p.efficiency_score) DESC) as ranking
    FROM productivity p
    JOIN employees e 
		ON p.employee_id = e.employee_id
    GROUP BY e.department, e.employee_id
)
SELECT * FROM RankedProductivity WHERE ranking = 1;

  
  
  
  
  
    
    
    
    
    
    
    
    
    












