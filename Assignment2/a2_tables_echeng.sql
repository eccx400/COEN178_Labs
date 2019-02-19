/*
 @author Eric Cheng
 @date 15 February, 2019
 These are the tables for Assignment 2 of the COEN 178 Intro to Databases Course
 */

/* Part 1 */
CREATE table MealItem (itemId VARCHAR(30) PRIMARY KEY, name VARCHAR(30), price DECIMAL(10,2), calories INTEGER);

CREATE table MealOrder (orderId VARCHAR(30) PRIMARY KEY, name VARCHAR(30), phone CHAR(20));

CREATE table Order_Item (orderId varchar(30), CONSTRAINT orderId FOREIGN KEY (orderId) REFERENCES MealOrder(orderId), itemId varchar(30), CONSTRAINT itemId FOREIGN KEY (itemId) REFERENCES MealItem(itemId));
