CREATE or REPLACE procedure saveCountByTitle (p_title in AlphaCoEmp.title%type)
AS 
	l_title_cnt integer := 0; 
BEGIN 
	l_title_cnt := countByTitle(p_title); 

	delete from EmpStats; -- Any previously loaded data is deleted 
	--/* inserting count of employees with title, ‘advisor’.*/ 
	insert into EmpStats values (p_title,l_title_cnt,SYSDATE);
END; 
/ 
Show errors; 
