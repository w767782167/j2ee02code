--�����洢���� ����һ������

create or replace procedure prod_adddept
(p_deptno in number, 
 p_dname in varchar2,
 p_loc in varchar2 default '������'
 ) 
is
begin
 insert into dept values(p_deptno,p_dname,p_loc);
 commit; 
end prod_adddept;
/
