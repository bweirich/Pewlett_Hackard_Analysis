# Pewlett_Hackard_Analysis

## Purpose 
The purpose of this analysis was to create a database to hold the employee information and determine the number of employees retiring in the coming years.  The large number of employees that are eligible for retirement and are leaving the company will create a large number of positions with vacancies and will decrease the experience level overall.

### Database Creation
We used ERD to map out the database schema to then create the database.  This allowed for the relationships between the tables to be identified as well as the primary and foregin keys that would need to be created.  Below is an image of this design.
![alt_text](https://raw.githubusercontent.com/bweirich/Pewlett_Hackard_Analysis/main/EmployeeDB.png.png)

A link to the SQL code that created the database can be viewed [here](https://github.com/bweirich/Pewlett_Hackard_Analysis/blob/main/Queries/schema.sql).

### Retirement Analysis
Additional tables a queries where then created to identify current employees nearing retirement based on 
- Birth date
- Hired date
This information was used to determine employees that are eligible for retirement as well as eligibility for the mentorship program.  A link to the SQL code for these queries can be found [here](https://github.com/bweirich/Pewlett_Hackard_Analysis/blob/main/Queries/queries.sql).

## Results
From this analysis the following information was able to be obtained:
- List of retirement eligible employees and the titles they have held while at the company
- List of retirement eligible employees with only their current title
- Number of retirement eligible employees by job title
- List of eligible employees for the mentorship program and their departmental information
A link to the SQL code for these queries can be found [here](https://github.com/bweirich/Pewlett_Hackard_Analysis/blob/main/Queries/Employee_Database_challenge.sql)

## Summary
When looking at the coming departure of retirement eligible employees start to leave the company the ability to fill these empty positions in a seamless manner is of the upmost importance.  The roles and departments structures should be reviewed before the departure to update job descriptions or roles as well as distribute the workload of the positions.  This will allow for roles that require more experience to be delegated between multiple less experienced employees which will assist in the transition.  This must be considered when filling the vacant positions.  If employees are promoted then the vacancies in these positions must also be taken into account.

The type of mentorship should be taken into account when determining if there are enough retirement ready employees to mentor the next generation.  If the mentorship is on a group basis for a department or group of employees the number of mentors should be sufficient.  If one on one mentorship is desired the number of mentors will need to increase or the time the mentors are available may need to increase as well.

### Additional Insight
Some further queries that will add insight into the upcoming vacancies and mentorship program are:
- Number of male and female retirement eligible employees in each title

![alt_text](https://raw.githubusercontent.com/bweirich/Pewlett_Hackard_Analysis/main/Images/unique_title_gender.PNG)
- Average salary of the eligible mentors

![alt_text](https://raw.githubusercontent.com/bweirich/Pewlett_Hackard_Analysis/main/Images/mentor_salary.PNG) 

By reviewing the number of male and females that hold the same title the diversity of these roles can be reviewed and taken into consideration for the next generation.  This could also be a factor in the mentoring program.

The average salary of the mentors by title will assist in determining their salary as they mentor as well as assisting when determining the salaries ranges for the roles in the next generation.
