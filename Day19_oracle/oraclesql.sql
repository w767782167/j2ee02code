select * from EMP;
--1)向scott.emp表中插入一条测试记录  时间格式：to_date('字符串','YYYY-MM--DD')
insert into emp values(9000,'ROSE','WAITER',7839,to_date('2017-11-09','YYYY-MM-DD'),100,6000,10);

commit;--提交代码

--2)修改scott.emp表中的SMITH的薪水为3456
select * from emp where ename='smith';
select * from emp where ename='SMITH';
update emp set sal = 3456 where ename='SMITH';

--3)将FORD从表中删除
delete from emp where ename='FORD';

--4)查询所有姓名中包含S的雇员信息
select * from emp where ename like '%S%';
--5)查询工资在2000~3000之间的雇员名和部门名
select ename,deptno,sal from emp where sal between 2000 and 3000;

select emp.ename,dept.dname,emp.sal from emp,dept where sal between 2000 and 3000 and emp.deptno = dept.deptno;


select emp.ename,dept.dname,emp.sal from emp inner join dept on emp.deptno = dept.deptno where sal between 2000 and 3000;

--6)查询SMITH的部门经理是谁，同时查SMITH所在部门地址在哪里?(假设这个人和部门经理在同一个地址)
--方法1
select mgr from emp where ename='ROSE';
select ename from emp where empno = (select mgr from emp where ename='ROSE');
select  emp.ename,dept.loc   from emp inner join dept on emp.deptno = dept.deptno where  empno = (select mgr from emp where ename='ROSE');

--方法2
select e1.ename,e2.ename  from emp e1 inner join emp e2 on e1.empno = e2.mgr where e2.ename='ROSE';

select e1.ename,e2.ename,dept.loc from emp e1 inner join emp e2 on e1.empno = e2.mgr inner join dept on e2.deptno = dept.deptno where e2.ename='ROSE';



