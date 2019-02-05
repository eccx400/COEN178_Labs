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

/* Exercise 2
SELECT last, salary
FROM Staff_2010
WHERE salary = (select salary from Staff_2010 where last = 'Zichal');
*/

/* Exercise 3 */
SELECT COUNT(*) AS SALARIES_100K_ABOVE
FROM Staff_2010
WHERE salary > 100000;

/* Exercise 4 */
SELECT COUNT(*) AS SALARIES_100K_ABOVE
FROM Staff_2010
WHERE salary > 100000
GROUP BY salary;

