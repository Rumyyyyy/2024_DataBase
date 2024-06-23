set echo on
set tab off
set serveroutput on

REM merge������ pl/sql �Է� ������ ���
declare
 v_empno emp.empno%type := 9000;
begin
 merge into emp a
 using dual
  on(a.empno = v_empno)
 when matched then -- ����� 9000�� �ο� ���� �� Ŀ�̼��� 10% ����
 update 
  set a.comm = a.comm*1.1
 when not matched then -- ����� 9000�� �ο� ������ �� �ο� �߰�
  insert(empno, ename, job, hiredate, sal, deptno)
  values(v_empno, 'ȫ�浿', 'CLERK', sysdate, 3000, 10);
  dbms_output.put_line('merge �Ǽ� : '||sql%rowcount); -- ����� �Ǽ� ���
 commit;
end;
/