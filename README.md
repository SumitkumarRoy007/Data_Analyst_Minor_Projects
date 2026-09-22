# 📊 Data Analyst Minor Projects

This repository contains 2 Minor Projects built using SQL & Excel for my Data Analyst Portfolio.

---


# 📁 Project 1 : Sales Data Analysis

### 📌 Problem Statement
Analyzed sales data to find monthly revenue, top products, and sales trends for business decision making.

**Files:**
- `Project_1_Clean_sales_data.csv` - Cleaned sales dataset
- `Project_1_Sale_queries.sql` - SQL analysis (Total Orders, Revenue, Avg Sales)
- `Project_1_sales_data_analysis.xlsx` - Excel Dashboard with Pivots & Charts

**What I Did:**
- Cleaned raw sales data (duplicates, nulls, formats)
- Wrote SQL queries for Total Revenue, Category-wise Sales, Monthly Trends
- Built Excel dashboard

**Dashboard Preview:**
![Project 1 Sales Dashboard](Project_1_Excel_dashboard.png)

**SQL Queries :**
-  overall business performances
- select
- count(*) as Total_orders,
- (sum(total_sales)/10000000) as Total_revenue_Cr,
- round(avg(total_sales)/1000,2) as Avg_order_value_Thousand,
- sum(quantity) as Total_units
- from sales;
-
-   <img width="428" height="54" alt="Overall_performance" src="https://github.com/user-attachments/assets/93138a37-4d52-4114-b53e-faed8e010cac" />


-   revenue by category and product - what sells most?
-  select category, product, sum(quantity) as units_sold, round(sum(total_sales)/10000000,2) as Revenue_Cr
-  from sales
-  where order_status = 'completed'
-  group by category, product
-  order by Revenue_Cr desc limit 10;
-
-    <img width="338" height="214" alt="Top10_products" src="https://github.com/user-attachments/assets/cd13dec7-fccb-4722-bf56-3ef50c287f1e" />



**Tools:** `Excel` `MySQL` 


---

# 📁 Project 2 : Employee Data Analysis
### 📌 Project 2: Employee Data Analysis - Problem Statement

**Business Problem:** The HR database (Srijan emp data) contains raw, uncleaned data with no insights on workforce diversity and salary.

**Task:** To clean the data and answer key HR questions using SQL.

**Files:**
- `Project_2_Srijan_emp_data.csv` - Raw employee dataset
- `Project_2_Data_cleaning_emp_data...` - Cleaned employee data 
- `Project_2_Emp_queries.sql` - SQL queries for HR insights

**What I Did:**
- Cleaned employee data using python
- Wrote SQL queries for:
    - Total number of employees
    - Gender-wise count (Male/Female)
    - Female employees records & salary filter (>=40000)
- HR & Workforce Analysis

**SQL Queries :**
-  Department wise employee count
- select department, count(*) as total_employees from srijan_emp group by department order by total_employees desc;
   <img width="222" height="142" alt="dept_emp_count" src="https://github.com/user-attachments/assets/a9d6cabb-b63b-4daa-8e1b-53c9264dd0e7" />

-  Average Salary by Department:
- select department, round(avg(exact_salary),0) as avg_salary from srijan_emp group by department order by avg_salary desc;
    <img width="196" height="143" alt="dept_avg_sal" src="https://github.com/user-attachments/assets/77af0922-6d86-42c1-a5a2-032e06978f0e" />

-  Top 5 highest paid employee
- select employee_name, designation, monthly_salary from srijan_emp order by monthly_salary desc limit 5;s;
    <img width="315" height="149" alt="top5_emp" src="https://github.com/user-attachments/assets/f71f2adf-ac4d-4772-a972-2e84fbf5a127" />


**Tools:** `Excel` `MySQL` `Python`

---

### 🛠️ Tech Stack
`SQL` `Excel` `MySQL` `Data Analysis`

### 👨‍💻 About Me
Aspiring Data Analyst | Major Project: Kolkata House Price Prediction (1 Lakh+ rows) | 2 Minor Projects

### 🔗 Portfolio
- Major Project: [Kolkata House Price](https://github.com/SumitkumarRoy007)
- Minor Projects: This Repo
