SELECT custid, firstname || lastname AS fullname, city FROM Customer; 
SELECT custid, firstname || lastname, city FROM Customer ORDER BY lastname;
SELECT serviceid, custid, day FROM Schedule ORDER BY serviceid, custid DESC;

SELECT serviceid FROM DeliveryService
MINUS
Select serviceid FROM Schedule;

SELECT firstname||lastname FROM Customer
INNER JOIN Schedule ON day = 'm';

SELECT lastname FROM Customer NATURAL JOIN Schedule;

SELECT max(servicefee)AS highest_Servicefee FROM DeliveryService;

SELECT count(serviceid) FROM Schedule group by (day);

SELECT A.custid, b.custid, A.city FROM Customer A, Customer B WHERE A.city = B.city;

SELECT * FROM Customer INNER JOIN DeliveryService ON city = location;




