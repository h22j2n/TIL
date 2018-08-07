select * from BONUS;
select * from EMP;
select * from salgrade;
select * from dept;
-- 1. DALLAS���� �ٹ��ϴ� ����� �̸�, ����, �μ���ȣ, �μ��̸��� ����Ͻÿ�.(5��)
--�̸�         ����        �μ��̸�          
---------- --------- --------------
--SMITH      CLERK     RESEARCH      
--JONES      MANAGER   RESEARCH      
--SCOTT      ANALYST   RESEARCH      
--ADAMS      CLERK     RESEARCH      
--FORD       ANALYST   RESEARCH      
select e.Ename as �̸�,e.job as ����, e.deptno as �μ���ȣ, d.DName as �μ��̸�
from emp e join dept d
on e.deptno=d.deptno
where loc= 'DALLAS';


-- 2. �̸��� 'A'�� ���� ������� �̸��� �μ��̸��� ����Ͻÿ�.(7��)
--�̸�         �μ��̸�          
---------- --------------
--ALLEN      SALES         
--WARD       SALES         
--MARTIN     SALES    
select Ename as �̸�, Dname as �μ��̸�
from emp e join dept d
on e.deptno=d.deptno
where Ename like '%A%';


-- 3. ����̸��� �� ����� ���� �μ��� �μ���, �׸��� ������ 
--����ϴµ� ������ 3000�̻��� ����� ����Ͻÿ�. (3��)
--����̸�       �μ���                    ����
---------- -------------- ----------
--KING       ACCOUNTING           5000
--FORD       RESEARCH             3000
--SCOTT      RESEARCH             3000
select Ename as ����̸�, Dname as �μ���,sal as ����
from emp e join dept d
on e.deptno=d.deptno
where sal>=3000;

-- 4. ������ 'SALESMAN'�� ������� ������ �� ����̸�, �׸���
-- �� ����� ���� �μ� �̸��� ����Ͻÿ�. (4��)
--����        ����̸�       �μ��̸�          
--------- ---------- --------------
--SALESMAN  TURNER     SALES         
--SALESMAN  MARTIN     SALES         
--SALESMAN  WARD       SALES         
--SALESMAN  ALLEN      SALES       
select job as ����, Ename as ����̸�, Dname as �μ���
from emp e join dept d
on e.deptno=d.deptno
where job='SALESMAN';

-- 5. Ŀ�̼��� å���� ������� �����ȣ, �̸�, ����, ����+Ŀ�̼�,
-- �޿������ ����ϵ�, ������ �÷����� '�����ȣ', '����̸�',
-- '����','�Ǳ޿�', '�޿����'���� �Ͽ� ����Ͻÿ�. (6��)
--  �����ȣ ����̸�               ����        �Ǳ޿�       �޿����
---------- ---------- ---------- ---------- ----------
--  7521 WARD            15000      15200          2
--  7654 MARTIN          15000      15300          2
--  7844 TURNER          18000      18000          3
select Empno as �����ȣ , Ename as ����̸� , sal*12 as ����, (sal)*12+comm as �Ǳ޿�,grade as �޿����
from emp , salgrade 
where sal  between losal and hisal
and comm is not null;


-- 6. �μ���ȣ�� 10���� ������� �μ���ȣ, �μ��̸�, ����̸�,
-- ����, �޿������ ����Ͻÿ�. (3��)
--   �μ���ȣ �μ��̸�           ����̸�               ����       �޿����
---------- -------------- ---------- ---------- ----------
--      10 ACCOUNTING     CLARK            2450          4
--      10 ACCOUNTING     KING             5000          5
--      10 ACCOUNTING     MILLER           1300          2 
select Deptno as �μ���ȣ,Dname as �μ��̸� ,Ename as ����̸�,sal as ����, grade as �޿����
from emp e join dept d 
using (deptno), salgrade
where Deptno=10 and sal between losal and hisal;

-- 7. �μ���ȣ�� 10��, 20���� ������� �μ���ȣ, �μ��̸�, 
-- ����̸�, ����, �޿������ ����Ͻÿ�. �׸��� �� ��µ� 
-- ������� �μ���ȣ�� ���� ������, ������ ���� ������ �����Ͻÿ�. (8��)
--   �μ���ȣ �μ��̸�           ����̸�               ����       �޿����
---------- -------------- ---------- ---------- ----------
--    10 ACCOUNTING     KING             5000          5
--    10 ACCOUNTING     CLARK            2450          4
select Deptno as �μ���ȣ,Dname as �μ��̸� ,Ename as ����̸�,sal as ����, grade as �޿����
from emp e join dept d 
using (deptno),salgrade
where (Deptno=10 or Deptno=20) and sal between losal and hisal
order by Deptno asc , sal desc;

-- 8. ������� �̸�, �μ���ȣ, �μ��̸��� ����Ͻÿ�. (15��) 
-- ��, ������ ���� �μ��� ����ϸ� �̰�� �̸��� '����'�̶��
-- ����Ѵ�.        
--�̸�               �μ���ȣ �μ��̸�          
---------- ---------- --------------
--SMITH              20 RESEARCH      
--ALLEN              30 SALES         
--WARD               30 SALES         
--JONES              20 RESEARCH      
select nvl(Ename,'����') as "������� �̸�" ,Deptno as �μ���ȣ,Dname as �μ��̸�
from emp e right join dept d 
using (deptno);

-- 9. ������� �̸�, �μ���ȣ, �μ��̸��� ����Ͻÿ�. (15��) 
-- ��, ���� �μ� ��ġ�� ������ ������  ����ϸ� �̰�� �μ���ȣ��  0 ����
-- ����Ѵ�.        
--�̸�               �μ���ȣ �μ��̸�          
---------- ---------- --------------
--SMITH              20 RESEARCH      
--ALLEN              30 SALES         
--WARD               30 SALES         
--JONES              20 RESEARCH      
select Ename as �̸� ,Dname as �μ��̸�,nvl(Deptno,'0') as �μ���ȣ
from emp e left join dept d 
using (deptno);

-- 10. ������� �̸�, �μ���ȣ, �μ��̸��� ����Ͻÿ�. (16��) 
-- ��, ������ ���� �μ��� ����ϸ� �̰�� �̸��� �μ���ȣ�� '����'�̶��
-- ����Ѵ�. ���� �μ� ��ġ�� ������ ������  ����ϸ� �μ� ��ȣ�� �μ� �̸���
-- '����' �̶�� ����Ѵ�.     
--�̸�               �μ���ȣ �μ��̸�          
---------- ---------- --------------
--SMITH              20 RESEARCH      
--ALLEN              30 SALES         
--WARD               30 SALES         
--JONES              20 RESEARCH    
select  nvl(Ename,'����') as �̸� ,nvl(Dname,'����')as �μ��̸� , nvl(to_char(Deptno),'����') as �μ���ȣ 
from emp e full join dept d
using (deptno);

--11. ���ʽ��� �޴� ��� ������ �̸�, ���ʽ�, �μ��̸�, ��ġ�� ��ȸ�ϴ� ���Ǹ� �ۼ��Ͻÿ�.

--ENAME           COMM        DNAME         	LOC
----------------------------------------------------
--KING		3500	ACCOUNTING	NEW YORK
--JONES		30	RESEARCH	DALLAS
--TURNER	0	SALES		CHICAGO
--MARTIN	300	SALES		CHICAGO
--WARD		200	SALES		CHICAGO
--ALLEN		300	SALES		CHICAGO         
select Ename , comm as ���ʽ�, Dname as �μ��̸� ,loc as ��ġ
from emp e join dept d
using (deptno)
where comm is not null;

-- 12. DALLAS���� �ٹ��ϴ� ����� �̸�,  ����, ����� ����Ͻÿ�.(5��)
--�̸�         ����        ���          
---------- --------- --------------
--SMITH      800         1      
--JONES      2975       4   
--SCOTT            
--ADAMS           
--FORD             
select Ename as �̸�,sal as ���� ,grade as ���
from emp e join dept d using (deptno),salgrade
where loc='DALLAS' and sal between losal and hisal;

--13. �����ȣ�� ����̸�, �׸��� �� ����� �����ϴ� �������� 
-- �����ȣ�� ����̸��� ����ϵ� ������ �÷����� '�����ȣ',
-- '����̸�', '�����ڹ�ȣ', '�������̸�'���� �Ͽ� ����Ͻÿ�. (15��)
      �����ڰ� ������ '����'�� ��� ����Ѵ�.
--    �����ȣ ����̸�            �����ڹ�ȣ �������̸�     
---------- ---------- ---------- ----------
--  7902 FORD             7566 JONES     
--  7788 SCOTT            7566 JONES     
--   7900 JAMES            7698 BLAKE   
select e.Empno as �����ȣ, e.Ename as ����̸�
, nvl(to_char(m.Mgr),'����') as �����ڹ�ȣ,nvl( m.Ename,'����') as �������̸�
from emp e  left outer join emp m
on e.Mgr=m.Empno;
