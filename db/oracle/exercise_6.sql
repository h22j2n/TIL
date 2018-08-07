--QUESTION
select * from BONUS;
select * from EMP;
select * from salgrade;
select * from dept;
--1. 'MARRY'���� ������ ���� �޴� ������� �̸��� ������ ����Ͻÿ�.(12��)
--ENAME             SAL
---------- ----------
--ALLEN            1600
--WARD             1250
select Ename,sal
from Emp
where sal>(select sal
           from Emp
           Where Ename='MARRY');

--2. 10�� �μ��� ������ ���� ������ �޴� ������� �̸�, ����, (3��)
--   �μ���ȣ�� ����Ͻÿ�.
--ENAME             SAL     DEPTNO
------------ ---------- ----------
--CLARK            2450         10
--KING             5000         10
--MILLER           1300         10
select Ename,sal,Deptno
from EMp
where sal in (select sal
              from Emp
              where Deptno=10);

--3. 'BLAKE'�� ���� �μ��� �ִ� ������� �̸��� ������� �̴µ� 'BLAKE'�� ���� ����Ͻÿ�. (5��)
--ENAME      HIREDATE
---------- --------
--JAMES      81/10/03
--TURNER     81/09/08
select Ename,Hiredate
from emp
where Ename != 'BLAKE' and Deptno in (select Deptno
              from Emp
              where Ename='BLAKE' );

--4. ��ձ޿����� ���� �޿��� �޴� ������� �����ȣ, �̸�, ������
-- ����ϵ�, ������ ���� ��� ������ ����Ͻÿ�.(6��)
--  EMPNO ENAME             SAL
---------- ---------- ----------
--   7839 KING             5000
--   7902 FORD             3000
select Empno,Ename,sal
from Emp
where sal > (select avg(sal)
                  from emp)
                  order by sal desc;
                  
                   

--5. �̸��� 'T'�� �����ϰ� �ִ� ������ ���� �μ����� �ٹ��ϰ�
--   �ִ� ����� �����ȣ�� �̸��� ����Ͻÿ�.(11��)
--     EMPNO ENAME     
---------- ----------
--      7902 FORD      
--      7876 ADAMS     
--      7788 SCOTT   
select Empno,Ename
from Emp
where Deptno in (select Deptno
                 from emp
                 where Ename like '%T%');

--6 �ڽ��� �޿��� ��ձ޿����� ����,�̸��� S�ڰ� ���� ����� ������
--  �μ����� �ٹ��ϴ� ��� ����� �����ȣ,�̸� �� �޿��� ����Ͻÿ�(4��)
--     EMPNO    ENAME      SAL
--    --------  --------  -------
--      7902     FORD       3000
--      7788     SCOTT      3000
--      7566     JONES      2975
--      7698     BLAKE     2850
select Empno,Ename,sal
from emp
where Deptno in (select Deptno
                 from emp
                 where Ename like '%S%' and 
                 where sal>avg(sal))
             
            



--7. 30�� �μ��� �ִ� ����� �߿��� ���� ���� ������ �޴� �������
--   ���� ������ �޴� ������� �̸�, �μ���ȣ, ������ ����Ͻÿ�. (4��)
--   (��, ALL �Ǵ� ANY �����ڸ� ����� ��)
--  �̸�    �μ���ȣ   ����
--------------------------------
--  JONES     20     2975
--  SCOTT     20     3000
--  KING       10     5000
--  FORD      20     3000
select Ename as �̸�, Deptno as �μ���ȣ, sal as ����
from emp
where sal > all (select sal
                 from emp
                 where Deptno=30);

--8. 'DALLAS'���� �ٹ��ϰ� �ִ� ����� ���� �μ����� ���ϴ� �����
--   �̸�, �μ���ȣ, ������ ����Ͻÿ�.(5��)
--ENAME          DEPTNO JOB      
---------- ---------- ---------
--FORD               20 ANALYST  
--ADAMS              20 CLERK    
--SCOTT              20 ANALYST  
--JONES              20 MANAGER  
--SMITH              20 CLERK 
select Ename, Deptno, job
from emp e join dept d
using (Deptno)
where Deptno in (select Deptno
                 from emp
                 where loc ='DALLAS');

--9. SALES �μ����� ���ϴ� ������� �μ���ȣ, �̸�, ������ ����Ͻÿ�.(6��)
--    DEPTNO ENAME      JOB      
---------- ---------- ---------
--    30 JAMES      CLERK    
--    30 TURNER     SALESMAN 
--    30 BLAKE      MANAGER  
select Deptno,Ename,job
from emp e join dept d
using (deptno)
where deptno in (select deptno
                 from emp
                 where Dname='SALES');

--10. 'KING'���� �����ϴ� ��� ����� �̸��� �޿��� ����Ͻÿ�. (3��)
--     (KING���� �����ϴ� ����̶� mgr�� KING�� ����� �ǹ���) 
--ENAME             SAL
---------- ----------
--CLARK            2450
--BLAKE            2850
--JONES            2975
select Ename,sal
from emp
where Ename in (select Ename
                 from emp
                 where Mgr = 7839);

--11. Ŀ�̼��� �޴� ����� / �μ���ȣ, ������ ���� �����
--    �̸�, ����, �μ���ȣ�� ����Ͻÿ�. (6��)
--	ALLEN	1600	30
--	MARTIN	1250	30
--	WARD	1250	30
--	JONES	2975	20
--	KING	5000	10
--	TURNER	1500	30
select Ename,sal,Deptno
from emp
where Deptno in (select Deptno
                      from emp
                      where comm is not null)
                      and sal in (select sal
                                  from emp
                                  where comm is not null);

--12. 30�� �μ� ������� ���ް� Ŀ�̼��� ���� ����
--    ������� �̸�, ����, Ŀ�̼��� ����Ͻÿ�.(30�� �μ� ����) (2��)
--  ENAME      SAL    COMM
---------- ---------- ----------
--	JONES	2975	30
--	KING	5000	3500
select Ename,sal,comm
from emp
where sal not in (select sal
              from emp
              where Deptno=30) and
              comm in (select comm
                     from emp
                     where Deptno!=30);
              

***************************************************************
--4. �μ��� �ִ� ������ "�μ���", "�ִ����" ���� ����Ͻÿ�.(�ִ������ ū ��)
--6.�μ��� ��տ����� ����ϵ�, ��տ��ް� 2000����
-- ū �μ��� �μ� �̸��� ��տ����� ����Ͻÿ�.
--9. Ŀ�̼��� ������ ������ �߿��� �μ��� �ִ������ ����Ͻÿ�. 
--�ִ� ������ ���� ������ �����Ͽ� ����Ͻÿ�.

�� �������� ���� ������ �ǽ��Դϴ�. emp_dept ��� �̸��� �並 ����
�����ϴ� �ڵ�� ������ ���ϴ�. ���� ��Ī�� ������ ���̰� �並 ���鶧 � �÷�����
�����Ͽ� ������ �������� ���Ƿ� ���մϴ�.

13. ����� SQL
create view emp_dept(Dname,sal,comm)
as
select Dname,sal,comm
from emp e join dept d
using (deptno);

14. ���� 4�� ���ۼ�
select Dname as �μ���, max(sal) as �ִ����
from emp_dept
group by Dname;
15. ���� 6�� ���ۼ�
select Dname as �μ��̸� ,avg(sal) as ��տ���
from emp_dept
group by Dname
Having avg(sal)>2000;
16. ���� 9�� ���ۼ� 
select max(sal) as �ִ����
from emp_dept
where comm is not null
group by Dname;