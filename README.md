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
## Workforce Overview
### Executive Summary Dashboard
Provides a high-level snapshot of workforce health, combining headcount, attendance rate, average efficiency score, high performer counts, and total safety incidents. Designed to give management an immediate overview of operational performance.

---

## Attendance Insight
### Attendance Performance Analysis
Analyzes attendance trends across departments and job roles, highlighting absenteeism patterns and time-based fluctuations to support workforce planning and operational stability.

---

## Safety Dashboard
### Workforce Safety & Incident Monitoring
Tracks total incidents, severity level, and lost workdays across departments. This dashboard supports risk identification and safety performance evaluation.

---

## Productivity Dashboard
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

# Full Interactive Dashboard (PDF Export)
Complete multi-page export of the Workforce Analysis Dashboard showcasing attendance, safety, and productivity insights.

# Key Insights (Executive Summary)
-Attendance scored a 25% late arrival rate that negatively impacts productivity calling for measures to prevent and minimise unnecessary and avoidable lateness.

-80.06% employee efficiency score indicates a strong, healthy and high-performing workforce. However, 39% of active employees were low performers, if not checked might cause high performer burnout.

-Out of 19 total safety incidents, 7 were high severity, and 36% of all safety incidents came from the Logistics department. This could be reduced by improving training and behavioural safety of employees, use of technology and monitoring to provide real-time alerts for potential risks, operational adjustments as-well-as engineering and environmental controls like improved LED lighting for improved visibility and automated guided vehicles that removes humans from high risk repetitive tasks.

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
   






















