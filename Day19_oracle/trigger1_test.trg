create or replace trigger trigger1_test
  before delete or insert or update on dept  
  
declare
  -- local variables here
begin
  dbms_output.put_line('�ұ�������');
end trigger1_test;
/
