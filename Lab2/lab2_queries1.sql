/* Part 2 Problem a */
SELECT custid, firstname || lastname AS fullname, city FROM Customer; 

/* Part 2 Problem b */
SELECT custid, firstname || lastname, city FROM Customer ORDER BY lastname;

/* Part 2 Problem c */
SELECT serviceid, custid, day FROM Schedule ORDER BY serviceid, custid DESC;

/* Part 2 Problem d */
SELECT serviceid FROM DeliveryService
MINUS
Select serviceid FROM Schedule;

/* Part 2 Problem e */
SELECT firstname||lastname FROM Customer
INNER JOIN Schedule ON day = 'm';

/* Part 2 Problem f */
SELECT lastname FROM Customer NATURAL JOIN Schedule;

/* Part 2 Problem g */
SELECT max(servicefee)AS highest_Servicefee FROM DeliveryService;

/* Part 2 Problem h */
SELECT count(serviceid) FROM Schedule group by (day);

/* Part 2 Problem i */
SELECT A.custid, b.custid, A.city FROM Customer A, Customer B WHERE A.city = B.city;

/* Part 2 Problem j */
SELECT * FROM Customer INNER JOIN DeliveryService ON city = location;

/* Part 2 Problem k */
SELECT min(salary) FROM staff_2010;
SELECT max(salary) FROM staff_2010;

