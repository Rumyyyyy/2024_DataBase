set echo on
set tab off
set serveroutput on

REM delete������ pl/sql �Է� ������ ���
declare
 v_empno emp.empno%type := 9000;
begin
 delete from emp
 where empno = v_empno;
 dbms_output.put_line('delete�Ǽ� : '||sql%rowcount); -- ����� �Ǽ� ���
 commit;
end;