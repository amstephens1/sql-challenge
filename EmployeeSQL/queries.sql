-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
 
Select Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
From Employees
Inner JOIN Salaries on
Employees.emp_no = Salaries.emp_no
;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

Select first_name, last_name, hire_date
From Employees
Where hire_date >= '01/01/1986'
and hire_date <= '12/31/1986'
;
-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.

Select Dept_manager.dept_no, Departments.dept_name, Dept_manager.emp_no, Employees.last_name, Employees.first_name
From Dept_manager
Inner JOIN Departments on
Dept_manager.dept_no=Departments.dept_no
Inner JOIN Employees on
Dept_manager.emp_no = Employees.emp_no
;
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

Select Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
From Employees
Inner JOIN Dept_emp on
Employees.emp_no = Dept_emp.emp_no
Inner JOIN Departments on
Departments.dept_no = Dept_emp.dept_no
;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select first_name, last_name, sex
From Employees
Where first_name = 'Hercules'
and last_name Like 'B%'
;

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
From Employees
Inner JOIN Dept_emp on
Employees.emp_no = Dept_emp.emp_no
Inner JOIN Departments on
Departments.dept_no = Dept_emp.dept_no
Where Departments.dept_name = 'Sales'
;

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
From Employees
Inner JOIN Dept_emp on
Employees.emp_no = Dept_emp.emp_no
Inner JOIN Departments on
Departments.dept_no = Dept_emp.dept_no
Where Departments.dept_name = 'Sales'
or Departments.dept_name = 'Development'
;


-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select last_name, 
count(*) As Num
From Employees
Group By last_name
Order By num DESC
;

