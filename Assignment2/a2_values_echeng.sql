/*
 @author Eric Cheng
 @date 15 February, 2019
 These are the table values for Assignment 2 of the COEN 178 Intro to Databases Course
 */

/* Part 1 */

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
