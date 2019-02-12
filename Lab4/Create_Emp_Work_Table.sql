Create Table Emp_Work(name VARCHAR(25) Primary Key, Project VARCHAR(20) default NULL,
Constraint FK_AlphaCo
Foreign Key (name) REFERENCES AlphaCoEmp(name));
insert into Emp_Work(name) Select Name from AlphaCoEmp where 
REGEXP_LIKE(name,'(^[ags])','i');
