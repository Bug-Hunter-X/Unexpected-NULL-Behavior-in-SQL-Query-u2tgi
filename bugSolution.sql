```sql
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);
```
This corrected query uses the `OR salary IS NULL` condition to include employees with NULL salaries in the result set.  This ensures that all employees in the 'Sales' department, regardless of their salary (including those with unknown salaries), are included in the query's results.
Alternatively, you could use a different approach such as `COALESCE` to replace NULL values with a default value before the comparison.
```sql
SELECT * FROM employees WHERE department = 'Sales' AND COALESCE(salary,0) > 100000
```