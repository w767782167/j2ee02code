create or replace package P_package is

  -- Author  : ADMINISTRATOR
  -- Created : 2017/11/15 15:01:09
  -- Purpose : 
  

  -- Public function and procedure declarations
  --����Ա�������ֵõ��䲿�ž��������
  function func_getMgrName(p_name varchar2) return varchar2;
  
  --���ĳ�����ű���µ�����Ա��
  procedure getAllempbyDeptNo(p_deptno number);

end P_package;
/
create or replace package body P_package is

  --����Ա�������ֵõ��䲿�ž��������
  function func_getMgrName(p_name varchar2) return varchar2 
    as
    v_name emp.ename%type;
    begin 
      
      select ename into v_name from emp where empno = (select mgr from emp where ename=p_name);
      
      return v_name;
      
      end;
      
      
   --���ĳ�����ű���µ�����Ա��
  procedure getAllempbyDeptNo(p_deptno number)
    is 
     my_row emp%rowtype;
     --1,�����α�
     cursor my_c is select * from emp where deptno=p_deptno;
    begin 
      --2,���α�
      open my_c;
      --3,��ȡ����
      
     -- fetch my_c into my_row;
     -- dbms_output.put_line(my_row.ename);
      
     --  fetch my_c into my_row;
     -- dbms_output.put_line(my_row.ename);
     
     --ʹ��loop ѭ��
     loop
        fetch my_c into my_row;
        exit when(my_c%notfound);
         dbms_output.put_line(my_row.ename);
       end loop;
     
      
      --�ر��α�
      close my_c;
        
      end;
    
end P_package;
/
