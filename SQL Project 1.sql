SELECT
	emp_no, from_date, to_date
FROM
	t_dept_emp;

SELECT DISTINCT 
	emp_no, from_date, to_date
FROM
	t_dept_emp;
    

SELECT
	YEAR(d.from_date) AS calender_year,
    e.gender,
    COUNT(e.emp_no) AS num_of_employees
FROM
	t_employees e
    join
    t_dept_emp d on d.emp_no = e.emp_no
GROUP BY calender_year, e.gender
HAVING calender_year >= 1990;

