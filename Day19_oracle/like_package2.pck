create or replace package like_package2 is

  -- Author  : ADMINISTRATOR
  -- Created : 2017/11/15 16:26:32
  -- Purpose : 
  
  -- Public type declarations
  --�Զ����α�����
  type my_cursor is ref cursor;
  
  procedure getempbylike(p_like varchar2, cur out my_cursor);
  
  

end like_package2;
/
create or replace package body like_package2 is

  procedure getempbylike(p_like varchar2, cur out my_cursor)
  as
  begin
    --��cur ��ֵ
     open cur for  select * from emp where ename like '%'||p_like||'%';
    end;  
end like_package2;
/
