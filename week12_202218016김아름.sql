set echo on
set tab off
set serveroutput on

REM commit�� ���
begin
 delete from emp where empno = 9000; -- ���� �������� ������ ������ ����
 commit;
 insert into emp(empno, ename, hiredate, sal) values(9000, 'ȫ�浿', sysdate, 9000);
 update emp set sal = sal + 100 where empno = 9000;
 commit;
end;