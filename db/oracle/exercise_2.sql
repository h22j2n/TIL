--1. ��� ���̺��� ����̸��� ù���ڴ� �빮�ڷ�, �������� �ҹ��ڷ� ����Ͻÿ�.
-- [���]       ����̸�
--           ---------------------
--                  Smith
select  initcap(Ename) from emp; 
--2. ������̺��� ����̸��� �̰� �� �̸��� �ι�° ���ں��� �׹�° ���ڱ���
-- ����Ͻÿ�.
-- [���]         ����̸�    2-4����
--                  ---------------------
--                  SMITH        MIT
select substr(Ename,2,3) from emp;

--3. ������̺��� ��� �̸��� ���� ������ ����Ͻÿ�.
select length(Ename) as ���ڰ��� from emp;

--4. ������̺��� ��� �̸��� �� ���� �ϳ��� ������ ���� �ϳ��� ����ϵ� 
-- ��� �ҹ��ڷ� ���� ����Ͻÿ�.
select lower(substr(Ename,1,1))
      , lower(substr(Ename,-1,1))
from emp;

--5. 3456.78�� �ݿø��Ͽ� �Ҽ��� �Ʒ� ù��° �ڸ� ������ ��Ÿ���ÿ�.
select round(3456.78,1) from dual;

--6. ���޿� 55�� ���ϰ� �ʴ����� �����Ͽ� ����ϴµ� ���޵ڿ� '��'�� ���̰� 
--    õ�������� ','�� �ٿ��� ����Ѵ�.
--[���]	��� ���
-----------------
--          	40,000��
--	80,000��
-- 	62,500��
--	148,700��
select to_char(trunc(sal*55,-2),'999,999') ||'��'  from emp;

--7. ���� �̸��� Ŀ�̼� ���� ���θ� ����ϴµ� �����Ǿ����� '����'
--    �������� �ʾ����� '����'�� ����Ͻÿ�.
--    	SMITH	����	
--	ALLEN	����	300
--	WARD	����	200
--	JONES	����	30
select Ename,nvl2(comm,'����','����'),Comm  from emp ;
--8. ���� �̸��� �μ���ȣ �׸��� �μ���ȣ�� ���� �μ����� ����Ͻÿ�.
--    �μ��� ���� ������ '����' �� ����Ͻÿ�.
--    (�μ��� : 10 �̸� 'A �μ�', 20 �̸� 'B �μ�', 30 �̸� 'C �μ�')
select Ename,
          case when Deptno=10 then 'A �μ�'
               when Deptno=20 then 'B �μ�'
               when Deptno=30 then 'C �μ�'
            else '����'
            end as �μ���
from emp;
	

--9. ������ 'SALESMAN'�̰� ������ 1000�̻��� �����
-- �̸��� ������ ����Ͻÿ�.
select Ename,sal from emp where job='SALESMAN' and sal >'1000';

--10. ���ó�¥�� ���ó�¥���� 10���� ���� ��¥�� ����Ͻÿ�.
select sysdate,sysdate+10 from dual;

--11. ���� �ð��� "....�� ..�� ..�� ..�� ..��" ���� ����Ͻÿ�.
select sysdate,to_char(sysdate,'yyyy"��"fmmm"��"dd"��"hh"��"mi"��"')from dual;

--12. ������ �̸�, ���޿�, ������ ��ȸ�ϴ� ���Ǹ� �ۼ��Ͻÿ�.
--(��, ������ ������ $200�� �� ���ʽ��� �����Ͽ� ����մϴ�.)

--�̸�              ���޿�               ����
---------------------------------------------------
--SMITH             800                 12000
--ALLEN            1600                 21600
--WARD             1250                 17400
select Ename as �̸�,sal as ���޿� , (sal*12)+200*12 as ���� from emp;

--13.  ��������2_�߰�.docx �� ��ü
select Ename as �̸�,sal as ����, 
          case when sal>1000 then 'A'
               when 1000<=sal or sal<2000 then 'B'
               when 2000<=sal or sal<3000 then 'C'
               when 3000<=sal or sal<4000 then 'D'
            else 'E'
            end as �ڵ�
from emp;


--14. ��������2_��.docx �� ��ü 
select Ename as �̸�, DEPTNO as �μ���ȣ,
                Decode(Deptno,10,'A',
                              20,'B',
                              30,'c',
                              40,'E',
                              'F') as �ڵ�
from emp;


--15.  ���̸��� Employee and Job Title�̰�, �޸��� �������� ���е� �����̸��� 
--������ ����ǵ��� �ϴ� ���Ǹ� �ۼ��Ͻÿ�.

--Employee and Job Title
---------------------------
--SMITH, CLERK
--ALLEN, SALESMAN
select Ename || ', ' || job as "Employee and Job Title"  from emp;

--16. �̸��� �ι�° ���ڰ� ��A���� ��� ������ �̸��� ��ȸ�ϴ� ���Ǹ� �ۼ��Ͻÿ� 

--ENAME
----------
--WARD 
--MARTIN
--JAMES
select Ename from emp where Ename like '_A%';

--17. �̸�, �Ի���, �Ի��� ������ ��ȸ�ϴ� ���Ǹ� �ۼ��Ͻÿ�
--�Ի��� ������ �������� �������� �����մϴ�.(�̶� ���ؿ����� �����Ϸ� �մϴ�)
--(�̶�, �̸�, �Ի��� �Ի���� ��Ī�� ����մϴ�.)

--�̸�                �Ի���              �Ի����
---------------------------------------------------
--MARTIN         1981��9��28��        ������
select Ename as �̸�,to_char(hiredate,'yyyy"��"mm"��"dd"��"') as �Ի���, 
to_char(hiredate,'day') as �Ի���� 
from emp
order by Decode (to_char(hiredate,'day'), '������',1,
                                         'ȭ����',2,
                                         '������',3,
                                         '�����',4,
                                         '�ݿ���',5,
                                         '�����',6
                                         ,7) asc ;
                                         

--18.   ��� ������ �̸��� ��������� �Ի�Ⱓ�� ������(���� ����� ���� �ݿø��� ��)�� 
--   ��ȸ�ϴ� ���Ǹ� �ۼ��Ͻÿ�
--   (�̶�, �Ի�Ⱓ�� �ش��ϴ� ����Ī�� ��MONTHS WORKED���� �ϰ�, 
--    �Ի�Ⱓ�� ���� ���� ���������� �����մϴ�.)

--��¿�)
--ENAME         MONTHS WORKED
--------------------------------
--ADAMS            284
--SCOTT            286
--MILLER           348
select Ename,round(Months_between(Sysdate,Hiredate),0) as "MONTH WORKED" 
from emp
order by round(Months_between(Sysdate,Hiredate),0);
--=order by 2; Ename=1��,round=2�� �׷��� 2�θ� �ᵵ�ȴ�


--19. ������̺��� ����̸��� ������� ���� ��¥������ �ٹ��ϼ��� ���Ͻÿ�.
--����̸�   �ٹ��ϼ�
-- -----------------------
--SMITH    12474��
--ALLEN    12409��
--WARD    12407��
--JONES    12368��
--MARTIN    12189��
--BLAKE    12369��
select Ename as ����̸� ,round(sysdate-hiredate)||'��' as �ٹ��ϼ� from emp;

--20. 1981�⵵�� �Ի��� �������� �̸�, ���� �׸��� �Ի�����
--         �Ի��� ������ ����Ͻÿ�.
select Ename as �̸�, job as ����,to_char( hiredate,'dd') as �Ի��� 
from emp
where to_char(hiredate,'YYYY')='1981'
order by  hiredate;
--21. �������� �������� ������ ����ϴ� SQL  ����� �ۼ��Ͻÿ�.
select to_char(to_date('19920128','yyyymmdd'),'day') from dual;
--=select to_char(to_date('920128','rrmmdd'),'day') from dual;


--22. ���縦 �������� ���� �¾�� �� ���� �Ǿ����� �� �� �ִ� 
--      SQL ����� �ۼ��Ͻÿ�.
select trunc(Months_between(sysdate, to_date('19920128','yyyymmdd')),0) as ����
from dual;


--23. �������� �̸��� ���� �׸��� Ŀ�̼� ������ ����ϴµ�
--     Ŀ�̼��� �������� ���� ������ "����"�̶�� ����Ͻÿ�.
select Ename,sal,nvl(to_char(comm),'����') from emp;
select * from emp;


--24. ������̺��� �̸��� ù���ڰ� A�̰� ������ ���ڰ� N�� �ƴ� �����
-- �̸��� ����Ͻÿ�.
select Ename from emp
where Ename like 'A%' and substr(Ename,-1) !='N';

--25. ������ �̸�, �Ի� ��¥ �׸��� �⵵�� �������� �Ͽ� �ݿø��� ��¥��
--     ����Ͻÿ�.        
select Ename as �̸� ,round(hiredate,'year') as �Ի糯¥
from emp;