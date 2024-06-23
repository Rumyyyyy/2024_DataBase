set echo on
set tab off
set serveroutput on

REM ������ ������ ���̺� t�� ������ drop
drop table t;

pause

REM DDL�� ���� ������ commit
REM execute immediate 'create table'���� Ʈ������� ���������� commit�Ѵ�
begin
 delete from emp where empno = 9000;
 commit;
 insert into emp(empno, ename, hiredate, sal) values(9000, 'ȫ�浿', sysdate, 9000);
 update emp set sal = sal + 100 where empno = 9000;
 execute immediate 'create table t(C1 NUMBER)'; -- DDL�� ����Ǹ� �ڵ����� commit�� ����ȴ�.
 rollback; -- 6�� �ٿ��� Ʈ������� �̹� ���������� commit�� �Ǿ����Ƿ� ���ǹ�
 declare
 v_sal number;
 begin
  select sal into v_sal from emp where empno = 9000;
  dbms_output.put_line('sal = '||v_sal); -- ����� 9000�� ���� DML�� commit��
 end;
end;