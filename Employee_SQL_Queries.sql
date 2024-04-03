--List the employee number, last name, first name, sex, and salary of each employee.
Select employees.emp_no, employees.last_name, employees.first_name,
	employees.sex, salaries.salary
FROM employees, salaries
WHERE employees.emp_no = salaries.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date >= '1986-01-01'
	AND hire_date <= '1986-12-31';

--List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager, departments, employees
WHERE dept_manager.emp_no = employees.emp_no AND
dept_manager.dept_no = departments.dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
SELECT employees.emp_no, dept_emp.dept_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp, employees, departments
WHERE dept_emp.emp_no = employees.emp_no AND 
dept_emp.dept_no = departments.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name (2 points)
SELECT dept_emp.emp_no, employees.last_name, employees.first_name
FROM dept_emp, employees
	WHERE dept_emp.dept_no IN
	(
		SELECT dept_no 
		FROM departments
		WHERE dept_name = 'Sales')
	AND dept_emp.emp_no = employees.emp_no;
