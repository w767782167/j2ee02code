--1.�������   ��ֵ��  into  :=   �ַ���ƴ�� ||

--��һ�ָ�ֵ :=
declare
--�������
 n number;
 str varchar2(20);
begin
  ----ҵ���߼�
  n := 100*5;
  str := 'abc';
  dbms_output.put_line(n||' '||str);
  end;

--���������

declare
  n number;
  str varchar2(20);
begin
  n :='&n';
  str :='&str' ;
  dbms_output.put_line(n||' '||str);
  end;
  
  --�ڶ��ָ�ֵ into
  select * from emp;
  declare
  --  tname  varchar2(20);
    tname emp.ename%type;  --ʹ��%type tname�����ͺʹ�С ��enameһ��
  begin
    select ename into tname from emp where empno=7369; 
    dbms_output.put_line('����'|| tname);
    end;
    
    
    --2.�����ж�
    
    
    --IF--THEN
    --IF-THEN-ELSE
    --IF-THEN-ELSIF
  
  --������������������ �Ƚϴ�С
  declare
    n1 number;
    n2 number;
  begin
   n1 := '&n1';
   n2 := '&n2';
   
   if n1> n2 then
     dbms_output.put_line('n1�Ƚϴ�');
   elsif  n1 < n2 then  
     dbms_output.put_line('n2�Ƚϴ�');
   else
      dbms_output.put_line('n1==n2');  
   end if; ---����if  
  end;
  
  --�����ж�
  --CASE
  --CASE selector
    WHEN exp1 THEN set1��
    WHEN exp2 THEN set2��
    ELSE ..
      end CASE;
      
   --����������һ������  �����1 ��   �����0 Ů  ���� ����  
   declare
     n1 number;
     str varchar2(10);
   begin
     n1 := '&n1';
     case n1
       when 1 then str:='��';
       when 0 then str:='Ů';
       else str := '����';
     end case;  
      dbms_output.put_line('�Ա� '||str); 
     end;  
     
     --case ��ֵ�Ƚ� �����Ƚ��Ƿ���ԣ�����
     --����������8000�� 5��   5000�� 7��    �����Ĵ����
    
   declare
     jifen number;
   begin
     jifen := '&jifen';
     
     case 
      when jifen>=8000 then 
        dbms_output.put_line('5��');
       when jifen>=5000 then 
        dbms_output.put_line('7��');
       else 
        dbms_output.put_line('����');  
      end case;  
     end;  
     
     
     --3.ѭ���ṹ
     --LOOP ����ѭ�� ����if exit �� when exit
     --WHILE--LOOP ������ѭ��
     --FOR--LOOP  �̶�������ѭ��
     
     --�ۼӴ�1��100
     
     --��һ�� 
     --A.loop  +   if exit
     declare
        i number := 1;
        total number := 0;
     begin
       loop
         total := total+i;
         i := i+1;
         if i>100 then exit;
         end if;
       end loop; 
       dbms_output.put_line('if_total '||total); 
       
       end;
        --A.loop  +   when exit
     
      declare
        i number := 1;
        total number := 0;
     begin
       loop
         total := total+i;
         i := i+1;
         exit when i>100;
       end loop; 
       dbms_output.put_line('when_total '||total); 
       
       end;
     
     
     --�ڶ��� while-loop
     declare
        i number := 1;
        total number := 0;
     begin
       while i<=100 loop
         total := total+i;
         i := i+1;
       end loop;
       dbms_output.put_line(total);     
       
        end;
        
        --������ for
        declare
          -- i number := 1;
           total number := 0;
        begin
           for i in 1..100 loop
            total := total+i;
            end loop;
      
          dbms_output.put_line(total);     
       
        end; 
        
        
        -- %type  ��
        select * from emp where empno = 7521;
        declare
           v_no  emp.empno%type;
           ename  emp.ename%type;
           job   emp.job%type;
           mgr   emp.mgr%type;
        begin
          
        end;
        
        
        --%rowtype ��
         declare
           v_no  emp.empno%type;
           my_row  emp%rowtype;
        begin
         v_no := 7521;
         select * into my_row from emp where empno = v_no;
         
         dbms_output.put_line(my_row.ename||' '||my_row.job||'   '||my_row.sal); 

        end;
        
        
        
        --�쳣
        
        declare
          v_num number := 2;
        begin
         v_num := 12/v_num;
         dbms_output.put_line('ok');
         exception  
        
         --�쳣��������
         when others then
           dbms_output.put_line('exception');
        end;
        
        
        select * from tab_student;
        
        --����һ������
        declare
          stuId  tab_student.stu_id%type;
          stuName  tab_student.stu_name%type;
          stuAge  tab_student.stu_age%type;
        begin
          stuId := 224;
          stuName := '�ŷ�1';
          stuAge := 149;
          insert into tab_student values(stuId,stuName,stuAge);  
          commit; 
          
          end;
        
        
        
        
        
     
      
     
     
     
  
  
  
  
  
  
