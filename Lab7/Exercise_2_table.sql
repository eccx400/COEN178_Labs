CREATE TABLE Course
(
    courseNo   INTEGER PRIMARY KEY,
    courseName VARCHAR(20)
);
CREATE TABLE Course_Prereq
(
    courseNo   INTEGER ,
    prereqNo Integer,
	Foreign Key(prereqNo) references Course (courseNo)
);
