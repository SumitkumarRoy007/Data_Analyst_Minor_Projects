use emp_database;
select * from emp;

-- Analysing the dataset and answering the required meaningfull questions:
-- 1. Total number of employee
select count(*) as total_employees from emp;

-- 2. Count no of male and female employees :
select gender, count(*) as number_of_emp from emp group by gender;

-- 3. Display all the female employee's record
select * from emp where gender="female";


-- 4. Count the Number of female employees whose salary>=40000
select count(*) as total_female_employees from emp where gender="female" and monthly_salary >=40000;

-- 5. Department wise employee count
select department, count(*) as total_employees from emp group by department order by total_employees desc;

-- 6. Average Salary by Department:
select department, round(avg(exact_salary),0) as avg_salary from emp group by department order by avg_salary desc;

-- 7. Count of Active vs Left Employee :
select attrition_status, count(*) as number_of_emp from emp group by attrition_status;


-- 8. Attrition count by Reason :
select attrition_status, count(*) as total_employee from emp where attrition_status= "left";
select employee_name, department, monthly_salary, attrition_status from emp where attrition_status = "left";

-- 9. Department with average overtime > 20 hours :
select department, round(avg(overtime_hours_monthly),2) as avg_overtime from emp group by department having avg(overtime_hours_monthly) >20;


-- 10. Employees taking more than 6 leaves :
select employee_id, employee_name,leaves_taken from emp where leaves_taken>6 order by leaves_taken desc;

-- 11. Salary between 5 lpa to 10 lpa :
select employee_id,employee_name,designation,salary_lpa from emp where salary_lpa between 5 and 10 order by salary_lpa, employee_name;


-- 12. Oldest employee in terms of age
select employee_name, designation, monthly_salary,age from emp order by age desc limit  1;


-- 13. Senior employee in terms of joining_date
select employee_name, designation, monthly_salary,joining_date from emp order by joining_date desc limit 1;


-- 14. Top 5 highest paid employee
select employee_name, designation, monthly_salary from emp order by monthly_salary desc limit 5;


-- 15. Top 5 lowest paid employee
select employee_name, designation, monthly_salary from emp order by monthly_salary asc limit 5;









