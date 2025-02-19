```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might seem correct, but it can lead to unexpected results if there are any NULL values in the 'salary' column.  The condition `salary > 100000` will treat NULL values as neither greater than nor less than 100000, effectively excluding employees with NULL salaries from the results, even if they are in the 'Sales' department.  This is a common pitfall when working with NULLs in SQL.
