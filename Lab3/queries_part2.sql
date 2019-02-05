/* Exercise 7 */
SELECT deptID AS deptno, COUNT(*) AS empcount
FROM L_EMP
GROUP BY deptID;

/* Exercise 8 Part a */
Select deptno,deptname,empcount
FROM (SELECT deptID AS deptno, COUNT(*) AS empcount FROM L_EMP GROUP BY deptID),L_DEPT
where deptID = L_DEPT.deptID;

/* Exercise 8 Part b */
Select deptno,deptname,empcount
FROM (SELECT deptID AS deptno, COUNT(*) AS empcount FROM L_EMP GROUP BY deptID),L_DEPT
where deptID = L_DEPT.deptID
ORDER BY empcount ASC;

/* Exercise 9 Part a */
Select deptID from L_EMP 
Group by deptID
Having count(*) = (SELECT max(count(*)) FROM L_EMP Group by deptID);

/* Exercise 9 Part b */
Select L_DEPT.deptname from L_DEPT INNER JOIN L_EMP ON L_EMP.deptID = L_DEPT.deptID
Group by L_DEPT.deptID, deptname
Having count(*) = (SELECT max(count(*)) FROM L_EMP Group by deptID);

/* Exercise 10 Part a */
Select * from L_EMP NATURAL JOIN L_DEPT;

/* Exercise 10 Part b */
Select * from L_EMP, L_DEPT
WHERE L_EMP.deptID = L_DEPT.deptID;
