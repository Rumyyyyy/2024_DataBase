set echo on
set tab off
set serveroutput on

REM %rowtype ���
declare
 v_emprec emp%rowtype; -- ���ڵ� ���� ����
begin
 v_emprec.empno := 9000;
 
 -- ������ �� ��ȸ
 select *
 into v_emprec
 from emp
 where empno = v_emprec.empno;
 
 -- �̸��� �μ� ��ȣ �ʵ� ���� �����Ѵ�.
 v_emprec.ename := 'ȫ�浿';
 v_emprec.deptno := 40;
 
 -- ����� ���� ���̺� �ݿ��Ѵ�.
 update emp
  set row = v_emprec -- ���ڵ� ������ ����� update
  where empno = v_emprec.empno;
 commit;
end;
/
 