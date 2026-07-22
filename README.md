# Workforce-Productivity-and-Safety-Analytics-Dashboard
## 
## Attendance | Productivity | Safety Insights

![Alt Text](https://github.com/Lavonia697/Workforce-Productivity-and-Health-Safety-Environment--Dashboard/blob/main/screenshots/Workforce%20Overview.png?raw=true)
---

## Project Overview
I built an end-to-end simulated workforce operations and performance analysis framework designed to shift enterprise management from reactive troubleshooting to proactive optimisation.

---

## Construction Industry Application:
- **Health & Safety (HSE):** Tracks incidents by site location and machinery type, allowing Safety Officers to identify faulty equipment or high-risk zones to lower the company's EMR rating.
- **Labor Forecasting:** Identifies labor capacity "crunch periods" (like the 114% spike seen in January) helping Project Managers better negotiate subcontractor schedules and avoid unexpected overtime costs.

---

## Tools & Technologies
- MySQL- Relational database design, staging table schemas, advanced analytical queries. 
- Power BI Desktop- Star schema data modelling, data enrichment, and UI/UX design.
- DAX (Data Analysis Expressions) - Custom business logic, dynamic KPIs, and performance tracking thresholds.
- Advanced UI features: Custom, user-driven context tooltips and conditional semantic colour coding.
---

 # Data Model & Design Decisions
- I used a star schema design with clear one-to-many relationships (employees→ attendance, productivity, incidents) to support performance and filtering.
- DAX measures were used extensively for business logic (eg, rates, counts, thresholds).
- Semantic colour coding was applied to reflect performance and risk consistently.
- Tooltips were implemented to provide context without overcrowding visuals.
![Alt Text](https://github.com/Lavonia697/Workforce-Productivity-and-Health-Safety-Environment--Dashboard/blob/main/pbix.data%20model/Operations%20and%20Performance%20Data%20Model.png?raw=true)

---

# Dashboard Architecture & Features
### 1. Executive Summary Overview
Provides a high-level operational pulse of workforce health-aggregating headcount, average attendance, overall efficiency, and total safety incidents onto a single pane glass for rapid executive review.

---

### 2. Attendance Performance Insights
Analyses attendance trends across departments and job roles, highlighting absenteeism patterns and time-based fluctuations to support workforce planning and operational stability.
![Alt Text](https://github.com/Lavonia697/Workforce-Productivity-and-Health-Safety-Environment--Dashboard/blob/main/screenshots/Attendance%20Dashboard.png?raw=true)

---

### 3. Workforce Safety & Incident Monitoring
Tracks total incidents, severity level, and lost workdays across departments. This dashboard supports risk identification and safety performance evaluation.

![Alt Text](https://github.com/Lavonia697/Workforce-Productivity-and-Health-Safety-Environment--Dashboard/blob/main/screenshots/Safety%20Dashboard.png?raw=true)

---

### 4. Productivity & Performance Evaluation
Measures employee efficiency scores and identifies high and low performers across job roles, supporting performance management and workforce optimisation.
![Alt Text](https://github.com/Lavonia697/Workforce-Productivity-and-Health-Safety-Environment--Dashboard/blob/main/screenshots/Productivity%20Dashboard.png?raw=true)

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

![Alt Text](https://github.com/Lavonia697/Workforce-Productivity-and-Health-Safety-Environment--Dashboard/blob/main/screenshots/Safety%20Tooltip.png?raw=true)

---

## Key Executive Insights & Strategic Recommendations
### Attendance Crisis (Current Rate: 72%)
- **Insignt:** A 72% attendance rate signifies an operational emergency. With 9.6% of the workforce absent and 18.1% late, the company faces crippled productivity, massive overtime costs, compromised service quality, and rapid employee burnout.
- **Strategic Action:** Audit the root causes to identify if the absences and lateness are driven by illness, burnout, or widespread workplace dissatisfaction.
Review workplace policies by implementing clear, transparent guidelines on absences and lateness and ensure consequences are enforced consistently.

- **Insight:** The second half of January saw drastic, erratic spikes in attendance, frequently breaching the 100% threshold and peaking near 114% which could have been caused by poor work distribution, project deadlines and delivery targets, or inflexible shift or capacity planning.
- **Strategic Action:** Shift deadlines away from the last week of the month to bi-weekly or staggered by client to distribute workload evenly. Cross-train employees from underutilised departments so they can temporarily support the strained team during the second half of the month. Leverage external capacity by using contractors and freelancers as-well-as outsourcing routine tasks for repetitive monthly tasks to external vendors freeing up your core team can focus entirely on high-value end-of-month deliverables

### Productivity Disparity (Current Score: 80.06%)
- **Insight:** While overall efficiency (80.06%) looks healthy, 24.6% of active employees are underperforming.
- **Strategic Action:** Nudge the average performers (37.13%) up into the high performance. Determine if low performance is derived from bad attitude, or less efficient machinery and systems, then implement software or workflow constraints that make mistakes impossible to make.

### Safety & Operational Bottlenecks
- **Insight:** 7 out of 19 total incidents were high-severity, and 16/30 total working days were lost due to safety incidents. Equipment injury was the single largest operational bottleneck with 37.5% of total lost workdays.
- **Strategic Action:**  -Safety incidents could be reduced by improving training and behavioural safety of employees, use of technology and monitoring to provide real-time alerts for potential risks, operational adjustments as-well-as engineering and environmental controls like improved LED lighting for improved visibility and automated guided vehicles that replace humans from high-risk repetitive tasks.
To prevent equipment injuries ensure that machinery can not  be turned on during maintenance and cleaning, double-check that physical barriers over moving parts have not been bypassed or removed by workers trying to move faster. Mandate the use of mechanical lifts or team lifting rules to reduce and prevent back strain injuries. Remap heavy traffic walkways by keeping walking paths clear of equipment cords and chemical spills to eliminate slip and fall injuries. 
   
---

## Key Skills Demonstrated
- Relational data modelling
- KPI design and validation
- DAX measures and calculated metrics
- Data visualisation best practices
- Workforce and operational analytics




















