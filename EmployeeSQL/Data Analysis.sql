List the employee number, last name, first name, sex, and salary of each employee.

select e.emp_no, last_name,first_name,sex, s.salary from employees e
join salaries s
on s.emp_no = e.emp_no

List the first name, last name, and hire date for the employees who were hired in 1986.

select first_name, last_name, hire_date from employees 
WHERE EXTRACT(YEAR FROM hire_date) = 1986
--where RIGHT(TO_CHAR(hire_date, 'YYYY'), 4) = '1986'

List the manager of each department along with their department number, department name, employee number, last name, and first name.

select dm.dept_no, d.dept_name,e.emp_no, last_name,first_name from employees e
join dept_manager dm
on dm.emp_no =e.emp_no
join departments d
on dm.dept_no =d.dept_no

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select de.dept_no, e.emp_no, last_name,first_name, d.dept_name from employees e
join dept_emp de
on de.emp_no =e.emp_no
join departments d
on de.dept_no =d.dept_no

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select first_name, last_name,sex  from employees e
where first_name = 'Hercules'
and last_name like 'B%'

List each employee in the Sales department, including their employee number, last name, and first name.

select e.emp_no, last_name,first_name from employees e
join dept_emp de
on de.emp_no =e.emp_no
join departments d
on de.dept_no =d.dept_no
where d.dept_name = 'Sales'

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

select e.emp_no, last_name,first_name, d.dept_name from employees e
join dept_emp de
on de.emp_no =e.emp_no
join departments d
on de.dept_no =d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
order by count(*) desc

