/*
 @author Eric Cheng
 @date 15 February, 2019
 These are the queries for Assignment 2 of the COEN 178 Intro to Databases Course
 */

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
SELECT phone, COUNT(*) FROM MealOrder GROUP BY phone HAVING COUNT(*) = (Select MAX(COUNT(orderId)) FROM MealOrder GROUP BY phone);

/* Number 7 */
SELECT SUM(calories) FROM MealItem NATURAL JOIN Order_Item GROUP BY orderId;

/* Number 8 */
UPDATE MealItem SET price = 0.9 * price WHERE itemId NOT IN (Select itemID FROM Order_Item); 
