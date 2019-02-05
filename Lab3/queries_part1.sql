/* Approach 1 */
SELECT First || ' ' || Last, salary
FROM Staff_2010
WHERE salary >= ALL (SELECT salary FROM Staff_2010);

/* Approach 2 */
SELECT First || ' ' || Last, salary
FROM Staff_2010
WHERE salary = (SELECT max(salary) FROM Staff_2010);

/* Approach 3 */
SELECT First || ' ' || Last, salary
FROM Staff_2010
WHERE salary IN (SELECT max(salary) FROM Staff_2010);

/* Exercise 2 */
SELECT last, salary
FROM Staff_2010
WHERE salary = (select salary from Staff_2010 where UPPER(last) = 'ZICHAL');

SELECT last, salary
FROM Staff_2010
WHERE salary IN (select salary from Staff_2010 where UPPER(last) = 'YOUNG');

/* Exercise 3 */
SELECT COUNT(*) AS SALARIES_100K_ABOVE
FROM Staff_2010
WHERE salary > 100000;

/* Exercise 4 */
SELECT COUNT(*) AS SALARIES_100K_ABOVE
FROM Staff_2010
WHERE salary > 100000
GROUP BY salary;

/* Exercise 5 */
SELECT COUNT(*) AS SALARIES_100K_ABOVE
FROM Staff_2010
WHERE salary > 100000
GROUP BY salary
HAVING COUNT(salary) >= 10;

/* Exercise 6 */
SELECT last
FROM Staff_2010
WHERE REGEXP_LIKE (last, '([aeiou])\1', 'i');
