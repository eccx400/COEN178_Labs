/* Show the rows of the tables */
SELECT * FROM L_EMP;

SELECT * FROM L_DEPT;

/* Exercise 1 */
SELECT L_EMP.empname 
FROM L_EMP, L_DEPT
WHERE (L_EMP.deptID = L_DEPT.deptID)
AND (L_DEPT.deptname = 'Testing');

SELECT empname
FROM L_EMP
INNER JOIN L_DEPT
ON (L_EMP.deptID = L_DEPT.deptID)
WHERE (deptname = 'Testing');
