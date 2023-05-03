
--QUERIES
--List the employee number, last name, first name, sex, and salary of each employee.
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
FROM Employees
JOIN Salaries ON (Employees.emp_no = Salaries.emp_no);

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE DATE_PART('YEAR', hire_date) = 1986;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT Departments.dept_no,Departments.dept_name, Employees.emp_no, Employees.last_name, Employees.first_name
FROM Departments
JOIN Department_Manager ON (Departments.dept_no = Department_Manager.dept_no)
JOIN Employees ON (Department_Manager.emp_no = Employees.emp_no);

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT Departments.dept_no,Departments.dept_name, Employees.emp_no, Employees.last_name, Employees.first_name
FROM Departments
JOIN Department_Employee ON (Departments.dept_no = Department_Employee.dept_no)
JOIN Employees ON (Department_Employee.emp_no = Employees.emp_no);

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT Departments.dept_name, Employees.emp_no, Employees.last_name, Employees.first_name
FROM Departments
JOIN Department_Employee ON (Departments.dept_no = Department_Employee.dept_no)
JOIN Employees ON (Department_Employee.emp_no = Employees.emp_no)
WHERE Departments.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT Departments.dept_name, Employees.emp_no, Employees.last_name, Employees.first_name
FROM Departments
JOIN Department_Employee ON (Departments.dept_no = Department_Employee.dept_no)
JOIN Employees ON (Department_Employee.emp_no = Employees.emp_no)
WHERE Departments.dept_name IN ('Sales', 'Development');

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT  last_name, COUNT(last_name) AS count
FROM Employees
GROUP BY last_name
ORDER BY count DESC;


