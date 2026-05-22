# Workforce-Analytics-Dashboard
## Attendance | Productivity | Safety Insights
This project analyzes the performance, reliability, and safety of a simulated workforce using SQL and Power BI. It provides interactive dashboards to support operational decision-making and workforce planning.

---

## Tools & Technologies
- MySQL- Relational database design, advanced queries 
- Power BI Desktop- Data modelling, DAX measures, interactive visualizations
- DAX - Creating business logic and KPI calculations
- Power BI Tooltips- User-driven context insights

---

## Key Skills Demonstrated
- Relational data modelling
- KPI design and validation
- DAX measures and calculated metrics
- Data visualization best practices
- Workforce and operational analytics

---

# Dashboard Overview
## 1 Workforce Overview
### Executive Summary Dashboard
Provides a high-level snapshot of workforce health, combining headcount, attendance rate, average efficiency score, high performer counts, and total safety incidents. Designed to give management an immediate overview of operational performance.

---

## 2 Attendance Insight
### Attendance Performance Analysis
Analyses attendance trends across departments and job roles, highlighting absenteeism patterns and time-based fluctuations to support workforce planning and operational stability.

---

## 3 Safety Dashboard
### Workforce Safety & Incident Monitoring
Tracks total incidents, severity level, and lost workdays across departments. This dashboard supports risk identification and safety performance evaluation.

---

## 4 Productivity Dashboard
### Productivity & Performance Evaluation
Measures employee efficiency scores and identifies high and low performers across job roles, supporting performance management and workforce optimization.

---

# Interactive Tooltips
## Attendance Tooltip
Displays attendance breakdown dynamically to show present/absent/late counts without cluttering the main visuals.

---

## Safety Tooltip
Shows incident severity and lost days context when hovering over safety visuals, giving deeper risk insights.

---


## Productivity Tooltip
Highlights productivity score context and performer segmentation for enhanced insight during exploration.

---

# Key Insights (Executive Summary)
-A 72% attendance rate signifies a severe crisis. With 9.6% of the workforce absent and 18.1% late, the company faces cripled productivity, massive overtime costs, compromised service quality, and rapid employee burnout. This calls for measures to prevent and minimise unnecessary and avoidable lateness and absences especialy in the Administration and Manufacturing departments.

-80.06% employee efficiency score indicates a strong, healthy and high-performing workforce. However, 24.6% of active employees were low performers, if not adressed might cause high performer burnout.

-Out of 19 total safety incidents, 7 were of high severity, and 16/30 total working days were lost due to safety incidents. Equipment injury was the single largest operational bottleneck accounting for 37.5% of total lost workdays.

  ---

 ## Recommended Steps
-Audit the root causes to identify if the absences and lateness are driven by illness, burnout, or widespread workplace dissatisfaction.
-Review workplace policies by implementing clear, transparent guidelines on absences and lateness and ensure consequences are enforced consistently.
-Prevent burnout by ensuring the high performers are not being routinely assigned the hardest tasks and longest shifts just because they can handle it. Study what they are doing differently (their shortcuts, habits and workflows) and update your standard operating procedures (SOPs).
-The fastest way to raise the 80.06% is by nudging the average performers (37.13%) into the high performing bracket.
-Determine if low performance is derived from bad attitude, or less efficient machinery and systems, then implement software or workflow constraints that make mistakes impossible to make.
 -Safety incidents could be reduced by improving training and behavioural safety of employees, use of technology and monitoring to provide real-time alerts for potential risks, operational adjustments as-well-as engineering and environmental controls like improved LED lighting for improved visibility and automated guided vehicles that replaces humans from high-risk repetitive tasks
-To counter the equipment injury risks ensure that machinery cannot  be turned on during maintenance and cleaning, check that physical barriers over moving parts have not been bypassed or removed by workers trying to move faster. Mandate the use of mechanical lifts or team lifting rules to reduce and prevent back strain injuries. Remap heavy traffic walkways by keeping walking paths clear of equipment cords and chemical spills to eliminate slip and fall injuries. 

---

  # Data Model & Design Decisions
- I used a star schema design with clear one-to-many relationships (employees→ attendance, productivity, incidents) to support performance and filtering.
- DAX measures were used extensively for business logic (eg, rates, counts, thresholds).
- Semantic colour coding was applied to reflect performance and risk consistently.
- Tooltips were implemented to provide context without overcrowding visuals

---

# How to Use This Project
1. Browse the interactive Power BI report (.pbix)
2. Explore each page to understand workforce performance and risks
3. Use the slicers to filter by department, job role, or gender
4. Hover over charts to view context-aware tooltips.
   






















