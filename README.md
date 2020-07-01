
# deliverables below 
[ERD of initial tables created](https://github.com/misterrustia/Pewlett-Hackard-Analysis/blob/master/EmployeeDB.png) 
[ the first deliverable table, retiring employees by title](https://github.com/misterrustia/Pewlett-Hackard-Analysis/blob/master/Data/Deliverable1.1_emp_ret_title.csv)

[deliverable two, retirees filtered with partition by for current title](https://github.com/misterrustia/Pewlett-Hackard-Analysis/blob/master/Data/Deliverable_1_2_partition.csv) 
The initial problem that was being solved by  SQL was to find out how many
 people were heading towards retirement per title inside of the company. 
The other problem being solved was figuring out  how many employees were
 eligible for a mentorship program that was being developed by the company. 

To solve the first problem of figuring out how many people were going to
retire per title we needed to take our current employee table that was
already distilled down using the BETWEEN and AND filters and then do a
INNER JOIN with two other tables, the titles table and the salaries
table  to create the first deliverable.
The first deliverable table  would have information about each employee's
positions and salaries they were receiving. INNER JOIN was used to take
only the columns that met the criteria in the initial SELECT segment of the
query. 
Once this table was created it was clear that there were tables that had
multiple copies of employees due to them having multiple positions over
their time with the company. The next deliverable to be created was to
address the multiple rows per employee. 
To remove the multiple copies of the employees from the first deliverable
table and keep each employees final title we needed to use a combination of
the ROW_NUMBER () OVER function in combination with the PARTITION BY
functions to correctly filter out table. For this task we had PARTITION BY
collect all rows that have the same  employee number and place them
together in a  partition in the temporary table which is created to
complete this subquery. Once we have partitions filled with each employees
and their possible multiple titles the ROW_NUMBER function is applied.
ROW_NUMBER gives each item in our partitions a consecutive a number to
allow for one item in the partition to be chosen to be placed in our new
table. We used the DESC function to assign the rows that are ORDERED by
from_date (of the employees title ) a descending order putting their more
recent from_date and thus most recent title at the top of the partition.
This allows us to take (rn=1) the top of the descending list of from_dates
as the criteria for our subquery. This combination of functions removes all
the rows of multiple employee numbers and returns only the ones with the
most recent from date giving us just the employees last title and salary in
our deliverable table. 
After completion of the challenge tables some analysis could be made.
There are 240124 current employees working at the company,33118 employees
could be ready to retire soon which would leave over a 7 percent gap in the
company's staff. 
Fortunately the mentorship table isolated 8475 members of the current staff
that could be enlisted to help support new employees as they come in. 
Some further questions would be what departments are going to need the most
hires? 
Is there a department where people usually tend to stay longer than others
so more immediate hiring can be started in places of more need in the
company than others? 
Which departments have the most managers who are ready to retire in them as
employees who are in line for promotion have to be identified and probably
given the task of helping source new talent for their said department. 





