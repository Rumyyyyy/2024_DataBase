set echo on
set tab off
set serveroutput on

REM rollback�� ���
begin
 delete from emp where empno = 9000; -- ���� �������� ������ ������ ����
 commit; -- emp���̺��� �����ʹ� 14���� ��
 -- ���� insert���� ���� emp ���̺��� �����ʹ� 15���� ��
 insert into emp(empno, ename, hiredate, sal) values (9000, ' ȫ�浿', sysdate, 9000);
 update emp set sal = sal + 100 where empno = 9000;
 rollback; -- 4�� �ٰ� 5�� ���� ������ ��� emp ���̺��� �����ʹ� �ٽ� 14���� ��
 declare
  v_cnt number;
 begin
  select count(*) into v_cnt from emp where empno = 9000;
  dbms_output.put_line('��� 9000 �Ǽ� = '||v_cnt);
 end;
 end;