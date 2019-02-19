/*
 @author Eric Cheng
 @date 15 February, 2019
 These are the queries for Assignment 2 of the COEN 178 Intro to Databases Course
 */

/* Part 1 */
CREATE table MealItem (itemId VARCHAR(30) PRIMARY KEY, name VARCHAR(30), price DECIMAL(10,2), calories INTEGER);

CREATE table MealOrder (orderId VARCHAR(30) PRIMARY KEY, name VARCHAR(30), phone CHAR(20));

CREATE table Order_Item (orderId varchar(30), CONSTRAINT orderId FOREIGN KEY (orderId) REFERENCES MealOrder(orderId), itemId varchar(30), CONSTRAINT itemId FOREIGN KEY (itemId) REFERENCES MealItem(itemId));

/* Insert into MealItem */
INSERT INTO MealItem VALUES ('I1', 'oatmeal', 3.00, 120);
INSERT INTO MealItem VALUES('I2', 'fruit_plate', 7.50, 220);
INSERT INTO MealItem VALUES('I3', 'steak', 20.99, 420);
INSERT INTO MealItem VALUES('I4', 'chicken pie', 12.50, 350);
INSERT INTO MealItem VALUES('I5', 'broccoli pie', 10.00, 200);

INSERT INTO MealItem VALUES('I6', 'gourd pie', 25.00, 100);
INSERT INTO MealItem VALUES('I7', 'gourd juice', 13.99, 50);
INSERT INTO MealItem VALUES('I8', 'bitter gourd', 1.00, 200);
INSERT INTO MealItem VALUES('I9', 'winter melon', 10.00, 400);
INSERT INTO MealItem VALUES('I10', 'honeydew', 10.00, 200);

/* Insert into MealOrder */
INSERT INTO MealOrder VALUES('O1', 'Smith', '4085551212');
INSERT INTO MealOrder VALUES('O2', 'Jones', '4085554444');
INSERT INTO MealOrder VALUES('O5', 'Clark', '4083331212');
INSERT INTO MealOrder VALUES('O7', 'Chen', '4086661212'); 
INSERT INTO MealOrder VALUES('O8', 'Smith', '4085551212');

INSERT INTO MealOrder VALUES('O3', 'Hamilton', '4083250235');
INSERT INTO MealOrder VALUES('O6', 'Layton', '4081231434');
INSERT INTO MealOrder VALUES('O4', 'Birmington', '4086346435');
INSERT INTO MealOrder VALUES('O9', 'Weston', '4086233321'); 
INSERT INTO MealOrder VALUES('10', 'Ramsay', '4085235214');

/* Insert into Order_Item */
INSERT INTO Order_Item VALUES('O1', 'I1');
INSERT INTO Order_Item VALUES('O1', 'I2');
INSERT INTO Order_Item VALUES('O1', 'I3');
INSERT INTO Order_Item VALUES('O2', 'I4');
INSERT INTO Order_Item VALUES('O8', 'I1');

INSERT INTO Order_Item VALUES('O4', 'I6');
INSERT INTO Order_Item VALUES('O9', 'I2');
INSERT INTO Order_Item VALUES('O1', 'I3');
INSERT INTO Order_Item VALUES('10', 'I8');
INSERT INTO Order_Item VALUES('O8', 'I9');

/* Part 2 */

/* Number 1 */
SELECT name, price FROM MealItem ORDER BY price;

/* Number 2 */
SELECT name, price, calories FROM MealItem ORDER BY price, calories;

/* Number 3 */
SELECT name, calories FROM MealItem WHERE calories >= ALL(Select calories FROM MealItem);

/* Number 4 */
SELECT name FROM MealItem WHERE itemID = ANY (SELECT itemId FROM Order_Item GROUP BY itemId HAVING count(itemId) >= All (SELECT count(itemId) FROM Order_Item GROUP BY itemId));

/* Number 5 */
Select name, price FROM MealItem WHERE itemId NOT IN (Select itemId FROM Order_Item);

/* Number 6 */
SELECT phone FROM MealOrder WHERE GROUP BY phone HAVING orderId >= ALL(Select orderId FROM Order_Item);

/* Number 7 */
SELECT SUM(calories) FROM MealItem NATURAL JOIN Order_Item GROUP BY orderId;

/* Number 8 */
UPDATE MealItem SET price = 0.9 * price WHERE itemId NOT IN (Select itemID FROM Order_Item); 
