set echo on
set tab off
set serveroutput on

REM �տ��� ������ �ο츦 ����
delete from emp where empno = 9000;

REM insert������ pl/sql ������ ���
declare
 v_empno emp.empno%type;
 v_ename emp.ename%type;
 v_deptno emp.deptno%type;
begin 
 v_empno := 9000;
 v_ename := 'ȫ�浿';
 v_deptno := 30;
 
 insert into emp(empno, ename, hiredate, deptno)
 values (v_empno, v_ename, sysdate, v_deptno); -- pl/sql ���� ���
 dbms_output.put_line('insert �Ǽ�:'||sql%rowcount); -- ����� �Ǽ� ���
 commit;
end;
/