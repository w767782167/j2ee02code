
--���ó���� �洢����
begin
  mypackage.prod_01('ʦ��');
  end;
  
  
  ---���ó����   ����
  select mypackage.func_01(2,29) from dual;
  
  select * from emp;
  
  select p_package.func_getMgrName('ROSE') from dual;
  
  select * from emp where deptno = 10;
  
  begin 
     p_package.getAllempbyDeptNo(10);
    end;
  
  
  begin
    like_package.getempbyLikename('S');
    end;
