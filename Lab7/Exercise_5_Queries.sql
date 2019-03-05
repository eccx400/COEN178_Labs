TTITLE CENTER -
"Expense Report"

SET UNDERLINE =

BREAK ON expenseDate SKIP 1

COLUMN expenseDate HEADING 'Date';
COLUMN groceries HEADING 'Groceries';
COLUMN entertainment HEADING 'Entertainment';
COLUMN rent HEADING 'Rent';

COLUMN groceries FORMAT $99,990.00
COLUMN entertainment FORMAT $99,990.00
COLUMN rent FORMAT $99,990.00

BREAK ON REPORT
COMPUTE SUM LABEL total AVG LABEL average MAX LABEL maximum OF groceries entertainment rent ON REPORT;
SELECT * FROM Expenses;
