# SQL Null Value Handling Issue
This repository demonstrates a common issue with SQL queries involving NULL values.  The `bug.sql` file contains a query that unintentionally excludes employees with NULL salaries.  The `bugSolution.sql` file provides a corrected version.

The problem arises because comparing NULL to any value (including 100000) using comparison operators such as `>` or `<` always results in `UNKNOWN` which is treated as `false`. To fix this, we need to explicitly handle NULL values.
