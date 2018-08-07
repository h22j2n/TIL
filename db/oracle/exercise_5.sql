--1. ���̺�� : visitor
--    �÷� ��� : name - �ѱ� �������� �ִ� 6�ڸ� ������ �� �ְ�
--                     writedate - ��¥�� ������ �� �ְ� char(18)
--                     memo - �ѱ� �������� �ִ� 60�ڸ� ������ �� �ְ�
--
--                    [visitor ���̺� �����͸� 3�� ���� �Է�]
--	    ��¥ ������ :                       1�� : ����ð�,  
--                                         1�� : 2016�� 12�� 25��, 
--                                         1�� : 1999�� 8�� 11��
create table visitor(
name varchar(18),
writedate  varchar(18),
memo  varchar(180));
insert into visitor(name,writedate,memo) values('��ȣ����',sysdate,'�Ķ��̵��Ѹ���');
insert into visitor(name,writedate,memo) values('��θ���',to_date('2016��12��25��','yyyy"��"fmmm"��"dd"��"'),'�����Ķ��̵��');
insert into visitor(name,writedate,memo) values('��ġŲ',to_date('1999��8��11��','yyyy"��"fmmm"��"dd"��"'),'����Ѹ���');
commit;
select * from visitor
delete from visitor
-- 2. ���̺�� : member
--    �÷� ��� : memId -  ���� �������� �ִ� 12�ڸ� ������ �� �ְ� - primary key
--	     memPwd - ���� �������� �ִ� 12�ڸ� ������ �� �ְ� - not null
--	     memName - �ѱ� �������� �ִ� 6�ڸ� ������ �� �ְ�  - not null
--                     memPic - �̹���(���̳ʸ� ����)�� ������ �� �ְ�(blob Ÿ��)                     
--                     joindate - ���Գ�¥ ������ ������ �� �ְ� - �⺻�� ����(���� ��¥)
create table member(
memid varchar(12) primary key,
mempwd varchar(12) not null,
memName varchar(18) not null,
mempic blob,
joindate date default sysdate);

-- 3. ���̺�� : news
--     �÷���� : id - ���̰� 5�� ���� Ÿ�� - primary key
--                    writer - �ѱ� �������� �ִ� 6�ڸ� ������ �� �ְ�
--                    title - �ѱ� �������� �ִ� 40�ڸ� ������ �� �ְ�
--	    content - �ѱ� �������� �ִ� 300�ڸ� ������ �� �ְ�
--                    writedate - �ۼ���¥ ������ ������ �� �ְ�
--                    cnt - ���̰� 8�� ���� Ÿ��
create table news(
id number(5) primary key,
writer varchar(18),
title varchar(120),
content varchar(900),
writedate date,
cnt number(8));


select * from visitor;



update goodsins
set goods_classify='��ǰ'
where goods_name='Ƽ����';