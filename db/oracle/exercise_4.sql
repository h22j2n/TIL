--�������ϸ� : exercise_4.sql
--QUESTION
select * from BONUS;
select * from EMP;
select * from salgrade;
select * from dept;

--1. ��� ������ ������ ����� ���Ͻÿ�. 
       (�Ҽ��� ���� ��°�ڸ������� ��Ÿ���� ��°�ڸ� ���ʹ� �����Ͻÿ�)

	���� ���
  -----------
	   x
select trunc(avg(sal),2) as ������� 
from Emp;

--2. ��� �������� �޴� Ŀ�̼��� ���� ���Ͻÿ�.
	Ŀ�̼� ��
-----------
	  x
select sum(comm) as "Ŀ�̼� ��"
from emp;
--3. 'DALLAS'���� �ٹ����� ������ ����� ������ ���� ������ ���� �������� �����Ͻÿ�.

	ó�����
	----------------------------
�������� X���̰� ������ ���� X�Դϴ�.
select  '��������'||count(Ename)||'���̰� ������ ����'||sum(sal)||'�Դϴ�' as ó�����
from emp e join dept d
using (DEPTNO)
Where loc='DALLAS';


--4. �μ��� �ִ� ������ "�μ���", "�ִ����" ���� ����Ͻÿ�.(�ִ������ ū ��)
	
	�μ���	�ִ����
	----------------------------
	xxxx          xxx
	 :	          :
select Dname as �μ��� ,max(sal) as �ִ���� 
from emp join dept
using (Deptno)
group by Dname
order by max(sal) desc;

--5. ���޺� �ּ� ������ 3000 �̻��� �Ǵ� ������ ���޸�� �ּ� ������  ����Ͻÿ�. 

	���޸�	�ּҿ���
	----------------------------
	xxxx          xxx
	 :	           :
select job as ���޸�, min(sal) as �ּҿ���
from emp
group by job
having min(sal)>=3000;


--6. �μ��� ��տ����� ����ϵ�, ��տ��ް� 2000����
-- ū �μ��� �μ� �̸��� ��տ����� ����Ͻÿ�.

	�μ���     ��տ���
           	------------------------
	xxxx          xxx
	 :	   :
select Dname as �μ��� , avg(sal) as ��տ���
from emp e join Dept d
using (DEPTNO)
group by Dname
having avg(sal)>2000;



--7. �� ���޺��� �ѿ����� ����ϵ� �ѿ����� ���� ������ ����Ͻÿ�.
select sum(sal)
from emp
group by job
order by sum(sal);



--8. ���޺� �ѿ����� ����ϵ�, ������ 'MANAGER'�� �������� �����Ͻÿ�. 
--   �׸��� �� �ѿ����� 5000���� ū ���޿� �ѿ��޸� ����Ͻÿ�.

	���޸�	�ѿ���
	----------------------------
	xxxx          xxx
	 :	   :
select job as ���޸�,sum(sal) as �ѿ���
from emp
where job!='MANAGER' 
group by job
having sum(sal)>5000;





--9. Ŀ�̼��� ������ ������ �߿��� �μ��� �ִ������ ����Ͻÿ�. 
--�ִ� ������ ���� ������ �����Ͽ� ����Ͻÿ�.

	�μ���     �ִ����
           	------------------------
	xxxx          xxx
	 :	   :
select Dname as �μ���, max(sal) as �ִ����
from emp e join Dept d
using (DEPTNO)
where comm is not null
group by Dname
order by max(sal) desc;


