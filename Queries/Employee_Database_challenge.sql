-- Create retirement_title table 
SELECT e.emp_no, 
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_title
FROM employees as e
INNER JOIN title as t
ON e.emp_no = t.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

-- Remove duplicate rows
SELECT DISTINCT ON (emp_no) 
	emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_title
ORDER BY emp_no, to_date DESC;

-- Number of titles in unique
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

-- Mentorship eligibility
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN title as t
ON e.emp_no = t.emp_no
WHERE de.to_date = ('9999-01-01')
AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY emp_no;

-- Number of titles by gender
SELECT COUNT(u.title), u.title, e.gender
INTO unique_title_gender
FROM unique_titles as u
JOIN employees as e
ON u.emp_no = e.emp_no
GROUP BY u.title, e.gender;

-- Avg salary by memtorship eligibility
SELECT me.title, ROUND(AVG(s.salary),2)
FROM mentorship_eligibility as me
JOIN salaries as s
ON me.emp_no = s.emp_no
GROUP BY me.title;