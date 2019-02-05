/* Exercise 7 */
SELECT deptID AS deptno, COUNT(*) AS empcount
FROM L_EMP
GROUP BY deptID;

/* Exercise 8 Part a*/
Select deptno,deptname,empcount
FROM (SELECT deptID AS deptno, COUNT(*) AS empcount FROM L_EMP GROUP BY deptID),L_DEPT
where deptID = L_DEPT.deptID;

/* Exercise 8 Part b*/
Select deptno,deptname,empcount
FROM (SELECT deptID AS deptno, COUNT(*) AS empcount FROM L_EMP GROUP BY deptID),L_DEPT
where deptID = L_DEPT.deptID
ORDER BY empcount ASC;
