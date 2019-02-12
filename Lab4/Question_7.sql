Create or Replace Procedure setEmpSalary(p_name in VARCHAR, low in INTEGER, high in INTEGER)
As
	l_salary AlphaCoEmp.salary%type;
BEGIN

	l_salary := ROUND(dbms_random.value(low, high));

	update AlphaCoEmp
	set salary = l_salary
	where name = p_name;	
	
   commit;
END;
/
show errors;
