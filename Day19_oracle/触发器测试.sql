select * from dept;
select * from emp;

delete from dept where deptno=94;
delete from dept where deptno=95;

insert into dept values(70,'客服部','中软');

insert into dept values(80,'客服部1','厦门中软');
insert into dept values(90,'客服部2','北京中软');


insert into dept values(94,'客服部6','福州3中软');
insert into dept values(95,'客服部7','福州4中软');
commit;

delete from dept where deptno=93;


update dept set deptno = 11 where deptno = 10;

select * from tab_student;
insert into tab_student values(my_seq.nextval,'张芳芳',18);
insert into tab_student values(null,'张三',56);


update emp set sal = sal+250 where empno = 9000;

update emp set sal = sal-50 where empno = 9000;

select * from MY_VIEW;


insert into my_view values(45,'开发部1','厦门1');

insert into dept values(51,'运营部','福建福州');
commit;

delete from dept where deptno = 51; 
commit;

update dept set dname='测试部' where dname='开发部';
commit;





