set echo on
set tab off
set serveroutput on

REM %rowtype�� ����ϸ� ���α׷��� ������ ����.
declare
 v_emprec emp%rowtype; -- ���ڵ� ���� ����
begin
 v_emprec.empno := 7782;
select * 
 into v_emprec
 from emp
 where empno = v_emprec.empno;
 dbms_output.put_line('�̸� :'||v_emprec.ename);
 dbms_output.put_line('�μ���ȣ :'||v_emprec.deptno);
end;
/