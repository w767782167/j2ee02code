--���ô洢����
begin 
  prod_test;
  end;
  
  begin
   prod_adddept(50,'BOSS'); 
  end;
  
  begin 
     prod_updatesal(9000,-1050);
    end;
    
  begin
    prod_selectmgr(7369);
    end;
    
    --���ô洢���� �з��ز���
    declare
     v_mgr number;
    begin
       prod_smgr_return(7369,v_mgr);
       dbms_output.put_line('���ؽ��'||v_mgr);
      end;
  
  
  select * from dept;
  
  select * from emp;
